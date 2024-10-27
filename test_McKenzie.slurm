#!/bin/bash
#SBATCH --job-name=atree_test   
#SBATCH --ntasks=1
#SBATCH --time=001:0:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./test_script.sh