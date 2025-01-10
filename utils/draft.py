#/home/wanzl/project/ppga_il/trajs_good_and_diverse_elite_with_measures_top500/4episodes/trajs_ppga_humanoid.pt 打开
import torch
import pickle
import pdb

traj_file = 'trajs_good_and_diverse_elite_with_measures_top500/4episodes/split/trajs_ppga_humanoid_expert0.pt'
data = pickle.load(open(traj_file, 'rb'))
print(type(data))

print(data['measures'].shape)