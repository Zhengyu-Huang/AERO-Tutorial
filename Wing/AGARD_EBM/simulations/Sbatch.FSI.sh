#!/bin/bash


#SBATCH -o Sbatch.FSI.out
#SBATCH --qos=low
#SBATCH -J AGARD.EBM.FSI
#SBATCH --nodes=2
#SBATCH --ntasks=36



source ~/.bashrc_frg


bash run.Steady.sh
bash postprocess.Steady.sh

bash run.FSI.sh
bash postprocess.FSI.sh

sleep 5


