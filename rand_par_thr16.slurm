#!/bin/bash
#SBATCH --job-name=atree_test
#SBATCH --ntasks=1         
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=16
#SBATCH --mem=100G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./rand_parallel_thr16.sh