#!/usr/bin/env python
# coding: utf-8

# In[4]:


import os
from pathlib import Path
import matplotlib.pyplot as plt



import pickle

import numpy as np
from attrdict import AttrDict
#from RL.ppo import *
import torch
from utils.utilities import log
from envs.brax_custom.brax_env import make_vec_env_brax
from models.actor_critic import Actor, PGAMEActor
from pandas import DataFrame

""" from IPython.display import HTML, Image
from IPython.display import display
from brax.io import html, image


device = torch.device('cuda')
env_name = 'halfcheetah'
env_name = 'humanoid'
# env_name = 'ant'
env_name = 'walker2d'
if env_name == 'humanoid':
    clip_obs_rew = True
else:
    clip_obs_rew = False
seed = 1111
normalize_obs = True
normalize_rewards = True

obs_shapes = {
    'humanoid': (227,),
    'ant': (87,),
    'halfcheetah': (18,),
    'walker2d': (17,)
}
action_shapes = {
    'humanoid': (17,),
    'ant': (8,),
    'halfcheetah': (6,),
    'walker2d': (6,)
}

actor_cfg = AttrDict({
        'obs_shape': obs_shapes[env_name],
        'action_shape': action_shapes[env_name],
        'normalize_obs': normalize_obs,
        'normalize_rewards': normalize_rewards,
})
env_cfg = AttrDict({
        'env_name': env_name,
        'env_batch_size': None,
        'num_dims': 2 if not 'ant' in env_name else 4,
        'envs_per_model': 1,
        'seed': seed,
        'num_envs': 1,
        'clip_obs_rew': False
})

archive_path = f'/home/wanzl/project/ppga_il/experiments_4_good_and_diverse_elite_with_measures_top500/IL_ppga_{env_name}_m_cond_gail_archive_bonus_wo_smooth/1111/checkpoints/cp_00002000/archive_df_00002000.pkl'
archive_path = 'experiments_4_good_and_diverse_elite_with_measures_top500/IL_ppga_walker2d_m_cond_reg_gail_RegLoss_MSE_Bonus_single_step_bonus/1111/checkpoints/cp_00002000/archive_df_00002000.pkl'
#scheduler_path = f'experiments/paper_ppga_{env_name}/1111/checkpoints/cp_00002000/scheduler_00002000.pkl'
scheduler_path = f'/home/wanzl/project/ppga_il/experiments_4_good_and_diverse_elite_with_measures_top500/IL_ppga_{env_name}_m_cond_gail_archive_bonus_wo_smooth/1111/checkpoints/cp_00002000/scheduler_00002000.pkl'
scheduler_path = 'experiments_4_good_and_diverse_elite_with_measures_top500/IL_ppga_walker2d_m_cond_reg_gail_RegLoss_MSE_Bonus_single_step_bonus/1111/checkpoints/cp_00002000/scheduler_00002000.pkl'
with open(archive_path, 'rb') as f:
    archive_df = pickle.load(f)
with open(scheduler_path, 'rb') as f:
    scheduler = pickle.load(f)



# create the environment
env = make_vec_env_brax(env_cfg)



def get_best_elite():
    best_elite = scheduler.archive.best_elite
    print(f'Loading agent with reward {best_elite.objective} and measures {best_elite.measures}')
    agent = Actor(obs_shape=actor_cfg.obs_shape[0], action_shape=actor_cfg.action_shape, normalize_obs=normalize_obs, normalize_returns=normalize_rewards).deserialize(best_elite.solution).to(device)
    if actor_cfg.normalize_obs:
        norm = best_elite.metadata['obs_normalizer']
        if isinstance(norm, dict):
            agent.obs_normalizer.load_state_dict(norm)
        else:
            agent.obs_normalizer = norm
    return agent



def get_random_elite():
    elite = scheduler.archive.sample_elites(1)
    print(f'Loading agent with reward {elite.objective_batch[0]} and measures {elite.measures_batch[0]}')
    agent = Actor(obs_shape=actor_cfg.obs_shape[0], action_shape=actor_cfg.action_shape, normalize_obs=normalize_obs, normalize_returns=normalize_rewards).deserialize(elite.solution_batch.flatten()).to(device)
    if actor_cfg.normalize_obs:
        norm = elite.metadata_batch[0]['obs_normalizer']
        if isinstance(norm, dict):
            agent.obs_normalizer.load_state_dict(norm)
        else:
            agent.obs_normalizer = norm
    return agent

def get_measure_elite(measure):
    elite = scheduler.archive.elites_with_measures_single(measure)
    print(f'Loading agent with reward {elite.objective} and measures {elite.measures}')
    agent = Actor(obs_shape=actor_cfg.obs_shape[0], action_shape=actor_cfg.action_shape, normalize_obs=normalize_obs, normalize_returns=normalize_rewards).deserialize(elite.solution).to(device)
    if actor_cfg.normalize_obs:
        norm = elite.metadata['obs_normalizer']
        if isinstance(norm, dict):
            agent.obs_normalizer.load_state_dict(norm)
        else:
            agent.obs_normalizer = norm
    return agent

def enjoy_brax(agent, render=True, deterministic=True):
    if actor_cfg.normalize_obs:
        obs_mean, obs_var = agent.obs_normalizer.obs_rms.mean, agent.obs_normalizer.obs_rms.var
        print(f'{obs_mean=}, {obs_var=}')

    obs = env.reset()
    rollout = [env.unwrapped._state]
    total_reward = 0
    measures = torch.zeros(env_cfg.num_dims).to(device)
    done = False
    while not done:
        with torch.no_grad():
            obs = obs.unsqueeze(dim=0).to(device)
            if actor_cfg.normalize_obs:
                obs = (obs - obs_mean) / torch.sqrt(obs_var + 1e-8)

            if deterministic:
                act = agent.actor_mean(obs)
            else:
                act, _, _ = agent.get_action(obs)
            act = act.squeeze()
            obs, rew, done, info = env.step(act.cpu())
            measures += info['measures']
            rollout.append(env.unwrapped._state)
            total_reward += rew
    if render:
        i = HTML(html.render(env.unwrapped._env.sys, [s.qp for s in rollout]))
        display(i)
        print(f'{total_reward=}')
        print(f' Rollout length: {len(rollout)}')
        measures /= len(rollout)
        print(f'Measures: {measures.cpu().numpy()}')
    return total_reward.detach().cpu().numpy() """


def get_scheduler_path(base_path, env, model, seed):
    return os.path.join(base_path, f"IL_ppga_{env}_{model}/{seed}/checkpoints/cp_00002000/scheduler_00002000.pkl")

def get_archive_path(base_path, env, model, seed):
    return os.path.join(base_path, f"IL_ppga_{env}_{model}/{seed}/checkpoints/cp_00002000/archive_df_00002000.pkl")

def load_scheduler_data(scheduler_path):
    with open(scheduler_path, 'rb') as f:
        scheduler = pickle.load(f)
    archive = scheduler.archive
    measure_dim = archive.measure_dim
    dims = archive.dims
    total_num_cells = np.prod(dims)
    list_of_all_fitness = archive.get_all_fitness()
    # padding with 0
    list_of_all_fitness = [0] * (total_num_cells - len(list_of_all_fitness)) + list(list_of_all_fitness)
    return np.array(list_of_all_fitness), total_num_cells

def compute_ccdf(fitness_array, total_num_cells, x_range):
    y_range = []
    for x in x_range:
        y_range.append(len(fitness_array[fitness_array > x]) / total_num_cells)
    return np.array(y_range)

def plot_CCDF_comparison():
    # Configuration
    base_path = "/home/wanzl/project/ppga_il/experiments_4_good_and_diverse_elite_with_measures_top500"
    envs = ["halfcheetah", "humanoid", "walker2d"]
    models = {
        'GAIL': 'gail',
        'GAIL-EBC': 'gail_archive_bonus_wo_smooth_p_0_q_2',
        'VAIL': 'vail',
        'VAIL-EBC': 'vail_archive_bonus_wo_smooth_p_0_q_2'
    }
    seeds = [1111, 2222, 3333]
    colors = {
        'GAIL': 'green',
        'GAIL-EBC': 'green',
        'VAIL': 'darkorange',
        'VAIL-EBC': 'darkorange'

    }
    linestyles = {
        'GAIL': 'solid',
        'GAIL-EBC': 'dashed',
        'VAIL': 'solid',
        'VAIL-EBC': 'dashed'

    }

    # Create figure
    fig, axes = plt.subplots(1, 3, figsize=(20, 5))
    fig.subplots_adjust(wspace=0.3)
    x_range = np.linspace(0, 1e4, 1000)

    # Plot for each environment
    for env_idx, env in enumerate(envs):
        ax = axes[env_idx]
        
        # Plot for each model
        for model_name, model_id in models.items():
            ccdf_values = []
            
            # Collect data from all seeds
            for seed in seeds:
                scheduler_path = get_scheduler_path(base_path, env, model_id, seed)
                try:
                    fitness_array, total_num_cells = load_scheduler_data(scheduler_path)
                    ccdf = compute_ccdf(fitness_array, total_num_cells, x_range)
                    ccdf_values.append(ccdf)
                except FileNotFoundError:
                    print(f"Warning: File not found for {env} {model_name} {seed}, use pandas archive instead")
                    archive_path = get_archive_path(base_path, env, model_id, seed)
                    try:
                        with open(archive_path, 'rb') as f:
                            archive_df = pickle.load(f)
                        fitness_array = archive_df['objective']
                        total_num_cells = 50*50
                        fitness_array = np.pad(fitness_array, (0, total_num_cells - len(fitness_array)), mode='constant', constant_values=0)
                        ccdf = compute_ccdf(fitness_array, total_num_cells, x_range)
                        ccdf_values.append(ccdf)
                        continue
                    except Exception as e:
                        print(f"Error processing {env} {model_name} {seed}: {e}")
                        continue
                except Exception as e:
                    print(f"Error processing {env} {model_name} {seed}: {e}")
                    continue

            if ccdf_values:
                # Convert to numpy array for calculations
                ccdf_values = np.array(ccdf_values)
                
                # Calculate mean and standard error
                mean_ccdf = np.mean(ccdf_values, axis=0)
                std_error = np.std(ccdf_values, axis=0) / np.sqrt(len(ccdf_values))

                # Plot mean line and confidence band
                ax.plot(x_range, mean_ccdf, label=model_name, 
                       color=colors[model_name], 
                       linestyle=linestyles[model_name],
                       linewidth=2)
                ax.fill_between(x_range, 
                              mean_ccdf - std_error,
                              mean_ccdf + std_error,
                              color=colors[model_name],
                              alpha=0.25)

        # Customize plot
        ax.set_xlabel("Fitness", fontsize=18)
        if env_idx == 0:
            ax.set_ylabel("CCDF", fontsize=18)
        ax.set_title(env.capitalize(), fontsize=20)
        ax.tick_params(axis='both', which='major', labelsize=14)
        ax.grid(True, alpha=0.3)

    # Add legend to the figure
    handles, labels = axes[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='upper center', 
              bbox_to_anchor=(0.5, 0.05), 
              ncol=len(models), fontsize=22)

    # Adjust layout and save
    plt.tight_layout(rect=[0, 0.1, 1, 1])
    plt.savefig('CCDF_comparison.pdf', dpi=600, bbox_inches='tight')
    plt.savefig('CCDF_comparison.png', dpi=600, bbox_inches='tight')
    plt.close()

if __name__ == "__main__":
    plot_CCDF_comparison()
   