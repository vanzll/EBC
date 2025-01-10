import torch
import pickle
import numpy as np
import os

def split_trajectories(input_file, output_dir):
    """
    将一个包含多个专家轨迹的文件切分成多个单独的专家轨迹文件
    
    Args:
        input_file (str): 输入轨迹文件的路径
        output_dir (str): 输出文件夹路径
    """
    # 创建输出目录
    os.makedirs(output_dir, exist_ok=True)
    
    # 加载数据
    data = pickle.load(open(input_file, 'rb'))
    
    # 获取轨迹数量
    lengths = data['lengths']
    n_experts = len(lengths)
    
    # 计算每个专家轨迹的起始索引
    start_indices = np.cumsum([0] + list(lengths[:-1]))
    
    # 为每个专家创建单独的轨迹文件
    for expert_idx in range(n_experts):
        start_idx = start_indices[expert_idx]
        end_idx = start_idx + lengths[expert_idx]
        
        # 创建新的数据字典
        expert_data = {}
        
        # 复制所有键值对
        for key in data.keys():
            if key == 'lengths':
                # lengths需要特殊处理，只保留当前专家的长度
                expert_data[key] = np.array([lengths[expert_idx]])
            elif key == 'returns':
                # returns也需要特殊处理，只保留当前专家的return
                expert_data[key] = data[key][expert_idx:expert_idx+1]
            else:
                # 其他数据按索引切片
                try:
                    expert_data[key] = data[key][start_idx:end_idx]
                except:
                    # 如果某些键不能按索引切片，直接复制
                    expert_data[key] = data[key]
        
        # 生成输出文件名
        input_filename = os.path.basename(input_file)
        name_without_ext = os.path.splitext(input_filename)[0]
        output_file = os.path.join(output_dir, f"{name_without_ext}_expert{expert_idx}.pt")
        
        # 保存数据
        with open(output_file, 'wb') as f:
            pickle.dump(expert_data, f)
        
        print(f"Saved expert {expert_idx} trajectory to {output_file}")
    return n_experts

# 使用示例
if __name__ == "__main__":
    input_files = ["trajs_good_and_diverse_elite_with_measures_top500/4episodes/trajs_ppga_ant.pt",
    "trajs_good_and_diverse_elite_with_measures_top500/4episodes/trajs_ppga_halfcheetah.pt",
    "trajs_good_and_diverse_elite_with_measures_top500/4episodes/trajs_ppga_humanoid.pt",
    "trajs_good_and_diverse_elite_with_measures_top500/4episodes/trajs_ppga_walker2d.pt"]
                   
    output_dir = "trajs_good_and_diverse_elite_with_measures_top500/4episodes/split"
    for input_file in input_files:
        split_trajectories(input_file, output_dir)