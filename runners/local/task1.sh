# Export variables before creating tmux sessions
export archive_bonus=True
export bonus_smooth=False

# PPGA_Bonus_humanoid
# Kill existing sessions
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_humanoid_1111 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_humanoid_1111
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_humanoid_2222 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_humanoid_2222
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_humanoid_3333 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_humanoid_3333



# Create new sessions with environment variables explicitly passed
tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"

tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 &&
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"

tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_humanoid_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 &&
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"



# halfcheetah
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_halfcheetah_1111 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_halfcheetah_1111
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_halfcheetah_2222 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_halfcheetah_2222
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_halfcheetah_3333 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_halfcheetah_3333

tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_halfcheetah_1111 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=2 && export SEED=1111 && export archive_bonus=${archive_bonus} && export bonus_smooth=${bonus_smooth} && bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"
tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_halfcheetah_2222 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=2 && export SEED=2222 && export archive_bonus=${archive_bonus} && export bonus_smooth=${bonus_smooth} && bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"
tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_halfcheetah_3333 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=2 && export SEED=3333 && export archive_bonus=${archive_bonus} && export bonus_smooth=${bonus_smooth} && bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"

# walker2d
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_walker2d_1111 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_walker2d_1111
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_walker2d_2222 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_walker2d_2222
tmux has-session -t PPGA_Archive_Bonus_wo_smooth_walker2d_3333 2>/dev/null && tmux kill-session -t PPGA_Archive_Bonus_wo_smooth_walker2d_3333

tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_walker2d_1111 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=3 && export SEED=1111 && export archive_bonus=${archive_bonus} && export bonus_smooth=${bonus_smooth} && bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"
tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_walker2d_2222 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=3 && export SEED=2222 && export archive_bonus=${archive_bonus} && export bonus_smooth=${bonus_smooth} && bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"
tmux new-session -d -s PPGA_Archive_Bonus_wo_smooth_walker2d_3333 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=3 && export SEED=3333 && export archive_bonus=${archive_bonus} && export bonus_smooth=${bonus_smooth} && bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"

