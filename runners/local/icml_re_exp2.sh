export num_demo=1
export demo_mode='good and diverse'
export intrinsic_module='gail'
export archive_bonus=True
export bonus_smooth=False
export p=0
export q=2

# humanoid num_demo=1,2,10, two seed each 
tmux has-session -t IL_PPGA_GAIL_EBC_1demo_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_1demo_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_EBC_1demo_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_1demo_humanoid_2222
tmux has-session -t IL_PPGA_GAIL_EBC_2demo_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_2demo_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_EBC_2demo_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_2demo_humanoid_2222
tmux has-session -t IL_PPGA_GAIL_EBC_10demo_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_10demo_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_EBC_10demo_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_10demo_humanoid_2222

tmux new-session -d -s IL_PPGA_GAIL_EBC_1demo_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export intrinsic_module=${intrinsic_module} &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_EBC_1demo_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export intrinsic_module=${intrinsic_module} &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"


export num_demo=2
tmux new-session -d -s IL_PPGA_GAIL_EBC_2demo_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export intrinsic_module=${intrinsic_module} &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_EBC_2demo_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export intrinsic_module=${intrinsic_module} &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

export num_demo=10
tmux new-session -d -s IL_PPGA_GAIL_EBC_10demo_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export intrinsic_module=${intrinsic_module} &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_EBC_10demo_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export intrinsic_module=${intrinsic_module} &&
export archive_bonus=${archive_bonus} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

# archive_bonus = False repeat
export archive_bonus=False
export num_demo=1
tmux has-session -t IL_PPGA_GAIL_1demo_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_1demo_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_1demo_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_1demo_humanoid_2222
tmux has-session -t IL_PPGA_GAIL_2demo_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_2demo_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_2demo_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_2demo_humanoid_2222
tmux has-session -t IL_PPGA_GAIL_10demo_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_10demo_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_10demo_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_10demo_humanoid_2222

tmux new-session -d -s IL_PPGA_GAIL_1demo_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_1demo_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

export num_demo=2
tmux new-session -d -s IL_PPGA_GAIL_2demo_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_2demo_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=1 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

export num_demo=10
tmux new-session -d -s IL_PPGA_GAIL_10demo_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_10demo_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=2 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"


# demo_mode = best, num_demo = 4

export demo_mode=best
export num_demo=4
export archive_bonus=False

tmux has-session -t IL_PPGA_GAIL_best_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_best_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_best_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_best_humanoid_2222

tmux new-session -d -s IL_PPGA_GAIL_best_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export demo_mode=${demo_mode} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_best_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=0 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export demo_mode=${demo_mode} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

export archive_bonus=True

tmux has-session -t IL_PPGA_GAIL_EBC_best_humanoid_1111 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_best_humanoid_1111
tmux has-session -t IL_PPGA_GAIL_EBC_best_humanoid_2222 2>/dev/null && tmux kill-session -t IL_PPGA_GAIL_EBC_best_humanoid_2222

tmux new-session -d -s IL_PPGA_GAIL_EBC_best_humanoid_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=1111 &&
export num_demo=${num_demo} &&
export demo_mode=${demo_mode} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_GAIL_EBC_best_humanoid_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=2222 &&
export num_demo=${num_demo} &&
export demo_mode=${demo_mode} &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
source /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"










