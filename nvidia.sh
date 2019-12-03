#!/bin/bash

#SBATCH -c 4
#SBATCH -t 6:00:00
#SBATCH -p gpu
#SBATCH --gres=gpu:teslaK80:2
#SBATCH -o nv_%j.out
#SBATCH -e nv_%j.err

module load gcc/6.2.0
module load cuda/10.0

~/nvida_samples/1_Utilities/deviceQuery/deviceQuery
