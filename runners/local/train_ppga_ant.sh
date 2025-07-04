#!/usr/bin/env bash

ENV_NAME="ant"
GROUP_NAME=ppga_"$ENV_NAME"
GRID_SIZE=10  # number of cells per archive dimension
SEED=${SEED:-1111}


archive_bonus=True
if [ "$archive_bonus" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_archive_bonus"
fi

wo_a=False
if [ "$wo_a" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_wo_a"
fi

bonus_smooth=True
if [ "$bonus_smooth" = "False" ]; then
    GROUP_NAME="${GROUP_NAME}_wo_smooth"
fi

RUN_NAME="paper_ppga_"$ENV_NAME"_seed_"$SEED
p=0.5
q=0.5
echo $RUN_NAME



python -m algorithm.train_ppga --env_name=$ENV_NAME \
                                     --rollout_length=128 \
                                     --archive_bonus=${archive_bonus} \
                                     --p=${p} \
                                     --q=${q} \
                                     --bonus_smooth=${bonus_smooth} \
                                     --wo_a=${wo_a} \
                                     --use_wandb=False \
                                     --seed=$SEED \
                                     --wandb_group=paper \
                                     --num_dims=4 \
                                     --num_minibatches=8 \
                                     --update_epochs=4 \
                                     --normalize_obs=True \
                                     --normalize_returns=True \
                                     --wandb_run_name=$RUN_NAME \
                                     --popsize=300 \
                                     --env_batch_size=3000 \
                                     --learning_rate=0.001 \
                                     --vf_coef=2 \
                                     --max_grad_norm=1 \
                                     --torch_deterministic=False \
                                     --total_iterations=2000 \
                                     --dqd_algorithm=cma_maega \
                                     --calc_gradient_iters=10 \
                                     --move_mean_iters=10 \
                                     --archive_lr=0.1 \
                                     --restart_rule=no_improvement \
                                     --sigma0=3.0 \
                                     --threshold_min=-500 \
                                     --grid_size=$GRID_SIZE \
                                     --expdir=./experiments_experts/$GROUP_NAME \
                                     --wandb_project PPGA_${ENV_NAME}
