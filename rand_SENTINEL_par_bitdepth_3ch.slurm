#!/bin/bash
#SBATCH --job-name=atree_test
#SBATCH --ntasks=1         
#SBATCH --time=03:00:00
#SBATCH --cpus-per-task=128
#SBATCH --mem=200G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./rand_SENTINEL_par_bitdepth_3ch.sh