#!/usr/bin/env bash

ENV_NAME="walker2d"
GRID_SIZE=50  # number of cells per archive dimension
SEED=${SEED:-1111}
#SEED=2222
#SEED=3333


intrinsic_module=${intrinsic_module:-'gail'}
# other choices: vail, diffail



auxiliary_loss_fn='MSE'
# auxiliary_loss_fn='NLL'


GROUP_NAME="IL_ppga_"$ENV_NAME"_${intrinsic_module}"
RUN_NAME=$GROUP_NAME"_seed_"$SEED
num_demo=4
gail_batchsize=120
echo $RUN_NAME
data_str=good_and_diverse_elite_with_measures_top500
archive_bonus=${archive_bonus:-True}
if [ "$archive_bonus" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_archive_bonus"
fi


archive_visitation_bonus=${archive_visitation_bonus:-False}
if [ "$archive_visitation_bonus" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_archive_visitation_bonus"
fi


wo_a=False
if [ "$wo_a" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_wo_a"
fi

bonus_smooth=${bonus_smooth:-False}
if [ "$bonus_smooth" = "False" ] && [ "$archive_bonus" = "True" ]; then
    GROUP_NAME="${GROUP_NAME}_wo_smooth"
fi
p=${p:-0}
q=${q:-2}

GROUP_NAME="${GROUP_NAME}_p_${p}_q_${q}"
echo $GROUP_NAME
python -m algorithm.train_il_ppga --env_name=$ENV_NAME \
                                --bonus_smooth=${bonus_smooth} \
                                --p=${p} \
                                --q=${q} \
                                --archive_visitation_bonus=${archive_visitation_bonus} \
                                --wo_a=${wo_a} \
                                --archive_bonus=${archive_bonus} \
                                --save_heatmaps=False \
                                --save_scheduler=False \
                                --intrinsic_module=${intrinsic_module} \
                                --demo_dir=trajs_${data_str}/${num_demo}episodes/ \
                                --reward_save_dir=reward_${num_demo}_${data_str}/ \
                                --auxiliary_loss_fn=${auxiliary_loss_fn} \
                                --num_demo=${num_demo} \
                                --gail_batchsize=${gail_batchsize} \
                                --rollout_length=128 \
                                --use_wandb=False \
                                --wandb_group=$GROUP_NAME \
                                --num_dims=2 \
                                --seed=$SEED \
                                --anneal_lr=False \
                                --num_minibatches=8 \
                                --update_epochs=4 \
                                --normalize_obs=True \
                                --normalize_returns=True \
                                --adaptive_stddev=False \
                                --wandb_run_name=$RUN_NAME\
                                --popsize=300 \
                                --env_batch_size=3000 \
                                --learning_rate=0.001 \
                                --vf_coef=2 \
                                --entropy_coef=0.0 \
                                --target_kl=0.008 \
                                --max_grad_norm=1 \
                                --total_iterations=2000 \
                                --dqd_algorithm=cma_maega \
                                --sigma0=1.0 \
                                --restart_rule=no_improvement \
                                --calc_gradient_iters=10 \
                                --move_mean_iters=10 \
                                --archive_lr=0.5 \
                                --threshold_min=200 \
                                --grid_size=$GRID_SIZE \
                                --expdir=./experiments_${num_demo}_${data_str}/$GROUP_NAME \
                                --wandb_project IL_PPGA_${ENV_NAME}
