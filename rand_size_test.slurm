#!/bin/bash
#SBATCH --job-name=atree_test
#SBATCH --ntasks=1         
#SBATCH --time=05:00:00
#SBATCH --cpus-per-task=128
#SBATCH --mem=500G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./rand_size_test.sh