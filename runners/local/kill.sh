#!/bin/bash

# Kill PPGA_Bonus sessions
tmux kill-session -t PPGA_Bonus_ant_1111
tmux kill-session -t PPGA_Bonus_ant_2222
tmux kill-session -t PPGA_Bonus_ant_3333
tmux kill-session -t PPGA_Bonus_halfcheetah_1111
tmux kill-session -t PPGA_Bonus_halfcheetah_2222
tmux kill-session -t PPGA_Bonus_halfcheetah_3333
tmux kill-session -t PPGA_Bonus_humanoid_1111
tmux kill-session -t PPGA_Bonus_humanoid_2222
tmux kill-session -t PPGA_Bonus_humanoid_3333

# Kill PPGA_IL_GAIL_Bonus sessions
tmux kill-session -t PPGA_IL_GAIL_Bonus_halfcheetah_2222
tmux kill-session -t PPGA_IL_GAIL_Bonus_halfcheetah_3333
tmux kill-session -t PPGA_IL_GAIL_Bonus_humanoid_2222
tmux kill-session -t PPGA_IL_GAIL_Bonus_humanoid_3333
tmux kill-session -t PPGA_IL_GAIL_Bonus_walker2d_2222
tmux kill-session -t PPGA_IL_GAIL_Bonus_walker2d_3333

# Kill PPGA_IL_diffail_Bonus sessions
tmux kill-session -t PPGA_IL_diffail_Bonus_halfcheetah_1111
tmux kill-session -t PPGA_IL_diffail_Bonus_halfcheetah_2222
tmux kill-session -t PPGA_IL_diffail_Bonus_halfcheetah_3333
tmux kill-session -t PPGA_IL_diffail_Bonus_humanoid_1111
tmux kill-session -t PPGA_IL_diffail_Bonus_humanoid_2222
tmux kill-session -t PPGA_IL_diffail_Bonus_humanoid_3333
tmux kill-session -t PPGA_IL_diffail_Bonus_walker2d_1111
tmux kill-session -t PPGA_IL_diffail_Bonus_walker2d_2222
tmux kill-session -t PPGA_IL_diffail_Bonus_walker2d_3333