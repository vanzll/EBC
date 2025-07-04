# PPGA_Bonus_ant
#如果存在，则先kill掉之前的session
tmux has-session -t PPGA_Bonus_ant_1111 2>/dev/null && tmux kill-session -t PPGA_Bonus_ant_1111
tmux has-session -t PPGA_Bonus_ant_2222 2>/dev/null && tmux kill-session -t PPGA_Bonus_ant_2222
tmux has-session -t PPGA_Bonus_ant_3333 2>/dev/null && tmux kill-session -t PPGA_Bonus_ant_3333

# 再创建新的session
tmux new-session -d -s PPGA_Bonus_ant_1111 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=0 && 
export SEED=1111 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_ant.sh"
#seed 2222 
tmux new-session -d -s PPGA_Bonus_ant_2222 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=0 && 
export SEED=2222 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_ant.sh"
#seed 3333
tmux new-session -d -s PPGA_Bonus_ant_3333 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=0 && 
export SEED=3333 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_ant.sh"



# PPGA_Bonus_humanoid
tmux has-session -t PPGA_Bonus_humanoid_1111 2>/dev/null && tmux kill-session -t PPGA_Bonus_humanoid_1111
tmux has-session -t PPGA_Bonus_humanoid_2222 2>/dev/null && tmux kill-session -t PPGA_Bonus_humanoid_2222
tmux has-session -t PPGA_Bonus_humanoid_3333 2>/dev/null && tmux kill-session -t PPGA_Bonus_humanoid_3333

tmux new-session -d -s PPGA_Bonus_humanoid_1111 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=1 && 
export SEED=1111 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"
tmux new-session -d -s PPGA_Bonus_humanoid_2222 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=1 &&
export SEED=2222 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"
tmux new-session -d -s PPGA_Bonus_humanoid_3333 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=1 &&
export SEED=3333 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"

# PPGA_Bonus_halfcheetah
tmux has-session -t PPGA_Bonus_halfcheetah_1111 2>/dev/null && tmux kill-session -t PPGA_Bonus_halfcheetah_1111
tmux has-session -t PPGA_Bonus_halfcheetah_2222 2>/dev/null && tmux kill-session -t PPGA_Bonus_halfcheetah_2222
tmux has-session -t PPGA_Bonus_halfcheetah_3333 2>/dev/null && tmux kill-session -t PPGA_Bonus_halfcheetah_3333

tmux new-session -d -s PPGA_Bonus_halfcheetah_1111 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=2 && 
export SEED=1111 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"
tmux new-session -d -s PPGA_Bonus_halfcheetah_2222 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=2 &&
export SEED=2222 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"
tmux new-session -d -s PPGA_Bonus_halfcheetah_3333 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=2 &&
export SEED=3333 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"

# PPGA_Bonus_walker2d
tmux has-session -t PPGA_Bonus_walker2d_1111 2>/dev/null && tmux kill-session -t PPGA_Bonus_walker2d_1111
tmux has-session -t PPGA_Bonus_walker2d_2222 2>/dev/null && tmux kill-session -t PPGA_Bonus_walker2d_2222
tmux has-session -t PPGA_Bonus_walker2d_3333 2>/dev/null && tmux kill-session -t PPGA_Bonus_walker2d_3333

tmux new-session -d -s PPGA_Bonus_walker2d_1111 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=3 && 
export SEED=1111 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"
tmux new-session -d -s PPGA_Bonus_walker2d_2222 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=3 &&
export SEED=2222 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"
tmux new-session -d -s PPGA_Bonus_walker2d_3333 "source ~/.bashrc && export CUDA_VISIBLE_DEVICES=3 &&
export SEED=3333 &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"

