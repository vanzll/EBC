# diffail naive version
export archive_bonus=False
export bonus_smooth=False

export intrinsic_module='diffail'


# diffail, 3 envs, 2 seeds

# humanoid
tmux has-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_humanoid_2222
tmux has-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_humanoid_3333 2>/dev/null && tmux kill-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_humanoid_3333



# Create new sessions with environment variables explicitly passed
tmux new-session -d -s IL_PPGA_diffail_Archive_Bonus_wo_smooth_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_diffail_Archive_Bonus_wo_smooth_humanoid_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

# halfcheetah
tmux has-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_halfcheetah_2222 2>/dev/null && tmux kill-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_halfcheetah_2222
tmux has-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_halfcheetah_3333 2>/dev/null && tmux kill-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_halfcheetah_3333

tmux new-session -d -s IL_PPGA_diffail_Archive_Bonus_wo_smooth_halfcheetah_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_diffail_Archive_Bonus_wo_smooth_halfcheetah_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

# walker2d

tmux has-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_walker2d_2222 2>/dev/null && tmux kill-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_walker2d_2222
tmux has-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_walker2d_3333 2>/dev/null && tmux kill-session -t IL_PPGA_diffail_Archive_Bonus_wo_smooth_walker2d_3333

tmux new-session -d -s IL_PPGA_diffail_Archive_Bonus_wo_smooth_walker2d_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_diffail_Archive_Bonus_wo_smooth_walker2d_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"


# condiff wo bonus
export archive_bonus=False
export intrinsic_module='condiff'

# 3 envs, 3 seeds
#humanoid
tmux has-session -t IL_PPGA_condiff_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_humanoid_1111
tmux has-session -t IL_PPGA_condiff_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_humanoid_2222
tmux has-session -t IL_PPGA_condiff_humanoid_3333 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_humanoid_3333

tmux new-session -d -s IL_PPGA_condiff_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_condiff_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_condiff_humanoid_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

# walker2d
tmux has-session -t IL_PPGA_condiff_walker2d_1111 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_walker2d_1111
tmux has-session -t IL_PPGA_condiff_walker2d_2222 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_walker2d_2222
tmux has-session -t IL_PPGA_condiff_walker2d_3333 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_walker2d_3333

tmux new-session -d -s IL_PPGA_condiff_walker2d_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_condiff_walker2d_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_condiff_walker2d_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

# halfcheetah
tmux has-session -t IL_PPGA_condiff_halfcheetah_1111 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_halfcheetah_1111
tmux has-session -t IL_PPGA_condiff_halfcheetah_2222 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_halfcheetah_2222
tmux has-session -t IL_PPGA_condiff_halfcheetah_3333 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_halfcheetah_3333

tmux new-session -d -s IL_PPGA_condiff_halfcheetah_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_condiff_halfcheetah_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_condiff_halfcheetah_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"







# condiff with bonus
export archive_bonus=True
export bonus_smooth=False
export intrinsic_module='condiff'

# 3envs, 3seeds
# humanoid
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_1111
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_2222
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_3333 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_3333

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_humanoid_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

# walker2d
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_1111 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_1111
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_2222 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_2222
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_3333 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_3333

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_walker2d_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

# halfcheetah
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_1111 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_1111
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_2222 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_2222
tmux has-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_3333 2>/dev/null && tmux kill-session -t IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_3333

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"


tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_condiff_Archive_Bonus_wo_smooth_halfcheetah_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export intrinsic_module=${intrinsic_module} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"



















