# PPGA_il_humanoid_diffail_Bonus
#如果存在，则先kill掉之前的session

tmux has-session -t PPGA_IL_diffail_Bonus_humanoid_1111 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_humanoid_1111
tmux has-session -t PPGA_IL_diffail_Bonus_humanoid_2222 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_humanoid_2222
tmux has-session -t PPGA_IL_diffail_Bonus_humanoid_3333 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_humanoid_3333
tmux has-session -t PPGA_IL_diffail_Bonus_walker2d_1111 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_walker2d_1111
tmux has-session -t PPGA_IL_diffail_Bonus_walker2d_2222 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_walker2d_2222
tmux has-session -t PPGA_IL_diffail_Bonus_walker2d_3333 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_walker2d_3333
tmux has-session -t PPGA_IL_diffail_Bonus_halfcheetah_1111 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_halfcheetah_1111
tmux has-session -t PPGA_IL_diffail_Bonus_halfcheetah_2222 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_halfcheetah_2222
tmux has-session -t PPGA_IL_diffail_Bonus_halfcheetah_3333 2>/dev/null && tmux kill-session -t PPGA_IL_diffail_Bonus_halfcheetah_3333 

tmux has-session -t PPGA_IL_GAIL_Bonus_halfcheetah_2222 2>/dev/null && tmux kill-session -t PPGA_IL_GAIL_Bonus_halfcheetah_2222
tmux has-session -t PPGA_IL_GAIL_Bonus_halfcheetah_3333 2>/dev/null && tmux kill-session -t PPGA_IL_GAIL_Bonus_halfcheetah_3333
tmux has-session -t PPGA_IL_GAIL_Bonus_walker2d_2222 2>/dev/null && tmux kill-session -t PPGA_IL_GAIL_Bonus_walker2d_2222
tmux has-session -t PPGA_IL_GAIL_Bonus_walker2d_3333 2>/dev/null && tmux kill-session -t PPGA_IL_GAIL_Bonus_walker2d_3333
tmux has-session -t PPGA_IL_GAIL_Bonus_humanoid_2222 2>/dev/null && tmux kill-session -t PPGA_IL_GAIL_Bonus_humanoid_2222
tmux has-session -t PPGA_IL_GAIL_Bonus_humanoid_3333 2>/dev/null && tmux kill-session -t PPGA_IL_GAIL_Bonus_humanoid_3333
# 再创建新的session
tmux new-session -d -s PPGA_IL_diffail_Bonus_humanoid_1111 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=0 &&
     export SEED=1111 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s PPGA_IL_diffail_Bonus_humanoid_2222 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=0 &&
     export SEED=2222 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s PPGA_IL_diffail_Bonus_humanoid_3333 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=0 &&
     export SEED=3333 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"


#walker2d


tmux new-session -d -s PPGA_IL_diffail_Bonus_walker2d_1111 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=1 &&
     export SEED=1111 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s PPGA_IL_diffail_Bonus_walker2d_2222 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=1 &&
     export SEED=2222 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s PPGA_IL_diffail_Bonus_walker2d_3333 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=1 &&
     export SEED=3333 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

#halfcheetah


tmux new-session -d -s PPGA_IL_diffail_Bonus_halfcheetah_1111 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=2 &&
     export SEED=1111 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s PPGA_IL_diffail_Bonus_halfcheetah_2222 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=2 &&
     export SEED=2222 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"

tmux new-session -d -s PPGA_IL_diffail_Bonus_halfcheetah_3333 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=2 &&
     export SEED=3333 &&
     export intrinsic_module='diffail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_halfcheetah.sh"





# intrinsic_module='gail' seed 2222 and 3333
# humanoid seed 2222 and 3333
# walker2d seed 2222 and 3333
# halfcheetah seed 2222 and 3333

tmux new-session -d -s PPGA_IL_GAIL_Bonus_halfcheetah_2222 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=0 &&
     export SEED=2222 &&
     export intrinsic_module='gail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s PPGA_IL_GAIL_Bonus_halfcheetah_3333 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=0 &&
     export SEED=3333 &&
     export intrinsic_module='gail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"
    
#walker2d seed 2222 and 3333


tmux new-session -d -s PPGA_IL_GAIL_Bonus_walker2d_2222 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=1 &&
     export SEED=2222 &&
     export intrinsic_module='gail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

tmux new-session -d -s PPGA_IL_GAIL_Bonus_walker2d_3333 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=1 &&
     export SEED=3333 &&
     export intrinsic_module='gail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_walker2d.sh"

#humanoid seed 2222 and 3333


tmux new-session -d -s PPGA_IL_GAIL_Bonus_humanoid_2222 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=3 &&
     export SEED=2222 &&
     export intrinsic_module='gail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"

tmux new-session -d -s PPGA_IL_GAIL_Bonus_humanoid_3333 "source ~/.bashrc &&
     export CUDA_VISIBLE_DEVICES=3 &&
     export SEED=3333 &&
     export intrinsic_module='gail' && 
     bash /home/wanzl/project/ppga_il/runners/local/train_il_ppga_humanoid.sh"















