# Conditional QDIL
# 思路： 
# 1.做多个dataset， dataloader，每一个dataset对应一个expert。（by 写一个data_scheduler, 写一个方法输出对应的dataset和c值)
# 2.改写扩散模型的输入，训练逻辑和奖励计算逻辑。
#（奖励计算需要考虑当前archive， 写一个reward_scheduler类， 结合expert的measure和当前archive， 输出为reward系数
# Plan 1.7 and 1.8 完成
from algorithm.data_loader import ExpertDataset
from torch.utils.data import DataLoader
from utils.cut_traj import split_trajectories
import os
import torch
import pickle
import time
import gc
import pdb
import numpy as np
from pyribs.ribs.archives import GridArchive
class dataset_scheduler:
    def __init__(self, cfgs, device = 'cuda:0'):
        

        self.cfgs = cfgs
        self.device = device

        self.splited_data = self.load_splited_sa_data(self.cfgs, return_next_state=False) # dict of dataset and dataloader   
        
        self.cond_dim = self.n_experts
    def load_splited_sa_data(self, cfgs, return_next_state=False):
        '''
        return a dict of dataset and dataloader, and the measure of each expert
        '''
        traj_root = cfgs.demo_dir
        traj_file = f'{traj_root}/trajs_ppga_{cfgs.env_name}.pt'
        output_dir = f'{traj_root}/split_trajs_ppga_{cfgs.env_name}'
        self.n_experts = split_trajectories(traj_file, output_dir)
        output_dic = {}
        for expert_idx, file_name in enumerate(os.listdir(output_dir)):
            # calculate the measure of the expertwww
            file_name = os.path.join(output_dir, file_name)
            measure = self.cal_measure(file_name)
            c = self.convert_expert_id_to_c(expert_idx)
            dataset = ExpertDataset(file_name=file_name, num_trajectories=1, train=True, 
                                    train_test_split=1.0, return_next_state=return_next_state)
            dataloader = DataLoader(dataset, batch_size=dataset.__len__(), shuffle=False, num_workers=1, drop_last=True)
             #该dataloader的数据数量：最大的batchsize

            output_dic[expert_idx] = {'dataset': dataset, 'dataloader': dataloader, 'measure': measure, 'c': c}
        return output_dic

    def cal_measure(self, file_name):
        data = pickle.load(open(file_name, 'rb'))
        measures = data['measures'] # (traj_len, measure_dim)
      
        measure = np.mean(measures, axis=0, keepdims=False)
        return measure # (measure_dim)

    def convert_expert_id_to_c(self, expert_id):
        '''
        The expert_id is the index of the expert in the dataset_scheduler (integer from 0 to n_experts-1)
        This method convert the expert_id to the c value for later model training. c: (c_dim)
        '''
        c = torch.zeros(self.n_experts)
        c[expert_id] = 1 # (n_experts)
   

        return c

    def cal_weighted_reward(self, reward_dic, current_archive: GridArchive):
        '''
        reward_dic: {expert_idx: reward}
        reward: (batch_size)
        Need to incorporate the current archive to calculate the coefficients
        '''
        expert_measures = torch.stack([torch.tensor(self.splited_data[expert_idx]['measure']) for expert_idx in reward_dic.keys()])
        coef = current_archive.cal_coef(expert_measures) # (num_experts,)
        vectorized_rewards = torch.stack(list(reward_dic.values()))
        vectorized_rewards = vectorized_rewards.to(self.device)
        # Add unsqueeze to make coef shape match vectorized_rewards for broadcasting
        coef = torch.tensor(coef).unsqueeze(1) # Shape becomes (4,1) to match with (4,3000)
        coef = coef.to(self.device)
        weighted_reward = torch.sum(coef * vectorized_rewards, dim=0)
        return weighted_reward

    def cal_weighted_reward(self, reward_dic, current_archive: GridArchive):
        '''
        并行化版本
        reward_dic: {expert_idx: reward}
        reward: shape (batch_size,) 或 (num_experts, batch_size)
        '''
   
        # 1. 获取专家measures并堆叠
        expert_measures = torch.stack([
            torch.tensor(self.splited_data[expert_idx]['measure']) 
            for expert_idx in reward_dic.keys()
        ])
   
 
        
        # 2. 计算系数
        coef = current_archive.cal_coef(expert_measures) # shape: (num_experts,)
     

        
        # 3. 将rewards转换为张量并堆叠
        vectorized_rewards = torch.stack(list(reward_dic.values()))  # shape: (num_experts, batch_size)
        vectorized_rewards = vectorized_rewards.to(self.device)

        
        # 4. 调整coef形状用于广播
        coef = coef.unsqueeze(1)
    
        # shape: (num_experts, 1)
   
        
        # 5. 计算加权和
        weighted_reward = torch.sum(coef * vectorized_rewards, dim=0)  # shape: (batch_size,)

        
        return weighted_reward




def print_gpu_memory():
    """打印当前GPU显存使用情况"""
    if torch.cuda.is_available():
        print(f"当前GPU: {torch.cuda.current_device()}")
        print(f"已分配显存: {torch.cuda.memory_allocated() / 1024**2:.2f} MB")
        print(f"缓存显存: {torch.cuda.memory_reserved() / 1024**2:.2f} MB")

def clear_gpu_memory(print_info=True):
    """
    清理GPU显存
    Args:
        print_info: 是否打印显存信息
    """
    if print_info:
        print("\n清理前的显存状态:")
        print_gpu_memory()

    # 删除所有还存在的PyTorch缓存变量
    for obj in gc.get_objects():
        try:
            if torch.is_tensor(obj):
                del obj
        except Exception:
            pass
    
    # 调用垃圾回收器
    gc.collect()
    
    # 清空PyTorch的CUDA缓存
    torch.cuda.empty_cache()

    if print_info:
        print("\n清理后的显存状态:")
        print_gpu_memory()