#!/usr/bin/env bash

ENV_NAME="humanoid"
GROUP_NAME=ppga_"$ENV_NAME"
GRID_SIZE=50  # number of cells per archive dimension
SEED=${SEED:-1111}
# SEED=2222
archive_bonus=${archive_bonus:-True}
if [ "$archive_bonus" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_archive_bonus"
fi

wo_a=False
if [ "$wo_a" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_wo_a"
fi

bonus_smooth=${bonus_smooth:-False}
if [ "$bonus_smooth" = "False" ]; then
    GROUP_NAME="${GROUP_NAME}_wo_smooth"
fi

RUN_NAME="paper_ppga_"$ENV_NAME"_seed_"$SEED
p=${p:-0.5}
q=${q:-1}
echo $RUN_NAME

GROUP_NAME="${GROUP_NAME}_p_${p}_q_${q}"
python -m algorithm.train_ppga --env_name=$ENV_NAME \
                                --archive_bonus=${archive_bonus} \
                                --p=${p} \
                                --q=${q} \
                                --bonus_smooth=${bonus_smooth} \
                                --wo_a=${wo_a} \
                                --rollout_length=128 \
                                --use_wandb=False \
                                --wandb_group=paper \
                                --num_dims=2 \
                                --seed=$SEED \
                                --anneal_lr=False \
                                --num_minibatches=8 \
                                --update_epochs=4 \
                                --normalize_obs=True \
                                --normalize_returns=True \
                                --clip_obs_rew=True \
                                --adaptive_stddev=False \
                                --clip_obs_rew=True \
                                --wandb_run_name=$RUN_NAME\
                                --popsize=300 \
                                --env_batch_size=3000 \
                                --learning_rate=0.0003 \
                                --vf_coef=2 \
                                --entropy_coef=0.0 \
                                --target_kl=0.008 \
                                --max_grad_norm=1 \
                                --total_iterations=2000 \
                                --dqd_algorithm=cma_maega \
                                --sigma0=0.5 \
                                --restart_rule=no_improvement \
                                --calc_gradient_iters=10 \
                                --move_mean_iters=10 \
                                --archive_lr=0.1 \
                                --threshold_min=200 \
                                --grid_size=$GRID_SIZE \
                                --expdir=./experiments_experts/$GROUP_NAME \
                                --wandb_project PPGA_${ENV_NAME}
                                 
