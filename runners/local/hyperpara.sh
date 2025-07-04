# find the best q for humanoid environment (q=1,2,5), 2 seed, using MConbo

export p=0
export q=1

export archive_bonus=True
export intrinsic_module='gail'
export bonus_smooth=False

tmux has-session -t IL_PPGA_MConbo_GAIL_humanoid_q_1_1111 2>/dev/null && tmux kill-session -t IL_PPGA_MConbo_GAIL_humanoid_q_1_1111
tmux has-session -t IL_PPGA_MConbo_GAIL_humanoid_q_1_2222 2>/dev/null && tmux kill-session -t IL_PPGA_MConbo_GAIL_humanoid_q_1_2222

tmux new-session -d -s IL_PPGA_MConbo_GAIL_humanoid_q_1_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_MConbo_GAIL_humanoid_q_1_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

export p=0
export q=2

tmux has-session -t IL_PPGA_MConbo_GAIL_humanoid_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_MConbo_GAIL_humanoid_q_2_1111
tmux has-session -t IL_PPGA_MConbo_GAIL_humanoid_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_MConbo_GAIL_humanoid_q_2_2222

tmux new-session -d -s IL_PPGA_MConbo_GAIL_humanoid_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_MConbo_GAIL_humanoid_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

export p=0
export q=5

tmux has-session -t IL_PPGA_MConbo_GAIL_humanoid_q_5_1111 2>/dev/null && tmux kill-session -t IL_PPGA_MConbo_GAIL_humanoid_q_5_1111
tmux has-session -t IL_PPGA_MConbo_GAIL_humanoid_q_5_2222 2>/dev/null && tmux kill-session -t IL_PPGA_MConbo_GAIL_humanoid_q_5_2222

tmux new-session -d -s IL_PPGA_MConbo_GAIL_humanoid_q_5_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_MConbo_GAIL_humanoid_q_5_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=3 && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"













