#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p gpu
#SBATCH -t 00-03:00:00
#SBATCH --qos gpu_access
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mem=16g
#SBATCH --mail-user=yufan@live.unc.edu

module add anaconda/5.2.0
conda env create -f env.yml
conda activate a2
python run.py
conda deactivate
