#!/bin/bash

#

#SBATCH --job-name=run1EVAC
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=32G
#SBATCH --account=a100acct
#SBATCH --partition=gpu-a100
#SBATCH --gpus=1
#SBATCH --mail-user="<user<@jhu.edu"

source .bashrc

# Replace with SLURM CUDA
module load cuda/11.3

# ENSURE DIRECTORIES ARE CORRECT
# ENSURE CONDA ENV IS CORRECT!
source activate slt-test
python -m /export/fs05/psingh/slt-jhu/slttransformer train /export/fs05/psingh/slt-jhu/configs/sign.yaml
