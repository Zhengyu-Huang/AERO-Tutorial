#!/bin/bash


#SBATCH -o Sbatch.FSI.out
#SBATCH --qos=low
#SBATCH -J AGARD.ALE.FSI
#SBATCH --nodes=1 
#SBATCH --ntasks=9



source ~/.bashrc_frg


bash run.Steady.sh
bash postprocess.Steady.sh



bash run.FSI.sh
bash postprocess.FSI.sh

sleep 5


