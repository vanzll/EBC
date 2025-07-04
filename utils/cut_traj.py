import torch
import pickle
import numpy as np
import os

def split_trajectories(input_file, output_dir):

    
    os.makedirs(output_dir, exist_ok=True)
    
   
    data = pickle.load(open(input_file, 'rb'))
    
  
    lengths = data['lengths']
    n_experts = len(lengths)
    

    start_indices = np.cumsum([0] + list(lengths[:-1]))
    

    for expert_idx in range(n_experts):
        start_idx = start_indices[expert_idx]
        end_idx = start_idx + lengths[expert_idx]
        
    
        expert_data = {}
        

        for key in data.keys():
            if key == 'lengths':
      
                expert_data[key] = np.array([lengths[expert_idx]])
            elif key == 'returns':
             
                expert_data[key] = data[key][expert_idx:expert_idx+1]
            else:
           
                try:
                    expert_data[key] = data[key][start_idx:end_idx]
                except:
                  
                    expert_data[key] = data[key]
        
     
        input_filename = os.path.basename(input_file)
        name_without_ext = os.path.splitext(input_filename)[0]
        output_file = os.path.join(output_dir, f"{name_without_ext}_expert{expert_idx}.pt")
        
     
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
    """ for input_file in input_files:
        split_trajectories(input_file, output_dir) """
    
    data = pickle.load(open("trajs_good_and_diverse_elite_with_measures_top500/4episodes/trajs_ppga_humanoid.pt", 'rb'))
    breakpoint()
