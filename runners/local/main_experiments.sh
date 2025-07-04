# Overall Task: 4 methods, 3 envs, 3 seeds, in total36 experiments
# 1. GAIL + Bonus p=0,q=2
export intrinsic_module='gail'
export archive_bonus=True
export bonus_smooth=False
export p=0
export q=2
export CUDA_VISIBLE_DEVICES=2
## humanoid
tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_humanoid_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_humanoid_p_0_q_2_3333


tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_humanoid_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

# walker2d

tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_walker2d_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

# halfcheetah
tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_GAIL_halfcheetah_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"






# 2. VAIL + Bonus p=0,q=2

export intrinsic_module='vail'
export archive_bonus=True
export bonus_smooth=False
export p=0
export q=2
export CUDA_VISIBLE_DEVICES=1

## humanoid
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_humanoid_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

## walker2d
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_walker2d_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

## halfcheetah
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_VAIL_halfcheetah_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"














# 3. DiffAIL + Bonus p=0,q=2

export intrinsic_module='diffail'
export archive_bonus=True
export bonus_smooth=False
export p=0
export q=2
export CUDA_VISIBLE_DEVICES=1

## humanoid
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_humanoid_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"


# walker2d
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_walker2d_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

## halfcheetah
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_1111 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_1111
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_2222 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_2222
tmux has-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_3333 2>/dev/null && tmux kill-session -t IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_3333

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s IL_PPGA_Mbo_wo_smooth_DiffAIL_halfcheetah_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"












# 4. PPGA_RL + Bonus p=0,q=2
export p=0
export q=2
export CUDA_VISIBLE_DEVICES=1
export archive_bonus=True
export bonus_smooth=False

## humanoid
tmux has-session -t PPGA_RL_humanoid_p_0_q_2_1111 2>/dev/null && tmux kill-session -t PPGA_RL_humanoid_p_0_q_2_1111
tmux has-session -t PPGA_RL_humanoid_p_0_q_2_2222 2>/dev/null && tmux kill-session -t PPGA_RL_humanoid_p_0_q_2_2222
tmux has-session -t PPGA_RL_humanoid_p_0_q_2_3333 2>/dev/null && tmux kill-session -t PPGA_RL_humanoid_p_0_q_2_3333

tmux new-session -d -s PPGA_RL_humanoid_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"

tmux new-session -d -s PPGA_RL_humanoid_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"

tmux new-session -d -s PPGA_RL_humanoid_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_humanoid.sh"

# walker2d
tmux has-session -t PPGA_RL_walker2d_p_0_q_2_1111 2>/dev/null && tmux kill-session -t PPGA_RL_walker2d_p_0_q_2_1111
tmux has-session -t PPGA_RL_walker2d_p_0_q_2_2222 2>/dev/null && tmux kill-session -t PPGA_RL_walker2d_p_0_q_2_2222
tmux has-session -t PPGA_RL_walker2d_p_0_q_2_3333 2>/dev/null && tmux kill-session -t PPGA_RL_walker2d_p_0_q_2_3333

tmux new-session -d -s PPGA_RL_walker2d_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"

tmux new-session -d -s PPGA_RL_walker2d_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"

tmux new-session -d -s PPGA_RL_walker2d_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_walker2d.sh"

## halfcheetah


tmux has-session -t PPGA_RL_halfcheetah_p_0_q_2_1111 2>/dev/null && tmux kill-session -t PPGA_RL_halfcheetah_p_0_q_2_1111
tmux has-session -t PPGA_RL_halfcheetah_p_0_q_2_2222 2>/dev/null && tmux kill-session -t PPGA_RL_halfcheetah_p_0_q_2_2222
tmux has-session -t PPGA_RL_halfcheetah_p_0_q_2_3333 2>/dev/null && tmux kill-session -t PPGA_RL_halfcheetah_p_0_q_2_3333

tmux new-session -d -s PPGA_RL_halfcheetah_p_0_q_2_1111 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=1111 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"

tmux new-session -d -s PPGA_RL_halfcheetah_p_0_q_2_2222 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=2222 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"

tmux new-session -d -s PPGA_RL_halfcheetah_p_0_q_2_3333 "source ~/.bashrc && 
export CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES} && 
export SEED=3333 &&
export archive_bonus=${archive_bonus} &&
export intrinsic_module=${intrinsic_module} &&
export bonus_smooth=${bonus_smooth} &&
export p=${p} &&
export q=${q} &&
bash /home/wanzl/project/ppga_il/runners/local/train_ppga_halfcheetah.sh"










