#!/bin/bash
#SBATCH --job-name=atree_test
#SBATCH --ntasks=1         
#SBATCH --time=1:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./rand_SENTINEL_serial_bitdepth_1ch.sh