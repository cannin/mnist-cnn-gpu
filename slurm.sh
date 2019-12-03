#!/bin/bash

#SBATCH -n 1
#SBATCH -c 4
#SBATCH -t 6:00:00
#SBATCH -p gpu
#SBATCH --gres=gpu:teslaK80:16
#SBATCH --mem-per-gpu=8G
#SBATCH --mail-user=augustin_luna@hms.harvard.edu
#SBATCH --mail-type=ALL
#SBATCH -o log_%j.out
#SBATCH -e log_%j.err

module load gcc/6.2.0
module load python/3.7.4
module load cuda/10.0

pipenv run python mnist_cnn_gpu.py
