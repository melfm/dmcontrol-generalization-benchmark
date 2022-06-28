#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:1       # Request GPU "generic resources"
#SBATCH --cpus-per-task=6  # Cores proportional to GPUs: 6 on Cedar, 16 on Graham.
#SBATCH --mem=32000M       # Memory proportional to GPUs: 32000 Cedar, 64000 Graham.
#SBATCH --time=18:30:00      # time
#SBATCH --output=%N-%j_00.out  # %N for node name, %j for jobID
#SBATCH --account=rrg-dpmeger

#SBATCH --mail-user=melissafm24@gmail.com
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=REQUEUE
#SBATCH --mail-type=ALL

echo 'Hello, Melissa!'
module load python/3.8
export DISPLAY=:0
MUJOCO_GL="osmesa" LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/nvidia-opengl/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/melfm24/.mujoco/bin

source ~/projects/def-dpmeger/melfm24/virtual_envs/jaco/bin/activate

python train.py --task_name $1 --algorithm $2 --horizon $3 --controller $4 --seed $5 --randomize