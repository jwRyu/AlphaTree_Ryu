#!/bin/bash
#SBATCH --job-name=atree_test
#SBATCH --ntasks=1         
#SBATCH --time=02:30:00
#SBATCH --cpus-per-task=128
#SBATCH --mem=500G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./AlphaTree config/config_RSkip_8bit_4N.txt | tee -a output/output_RSkip_4N.txt
./AlphaTree config/config_RSkip_12bit_4N.txt | tee -a output/output_RSkip_4N.txt
./AlphaTree config/config_RSkip_16bit_4N.txt | tee -a output/output_RSkip_4N.txt
./AlphaTree config/config_RSkip_32bit_4N.txt | tee -a output/output_RSkip_4N.txt
./AlphaTree config/config_RSkip_64bit_4N.txt | tee -a output/output_RSkip_4N.txt

./AlphaTree config/config_RSkip_8bit_8N.txt | tee -a output/output_RSkip_8N.txt
./AlphaTree config/config_RSkip_12bit_8N.txt | tee -a output/output_RSkip_8N.txt
./AlphaTree config/config_RSkip_16bit_8N.txt | tee -a output/output_RSkip_8N.txt
./AlphaTree config/config_RSkip_32bit_8N.txt | tee -a output/output_RSkip_8N.txt
./AlphaTree config/config_RSkip_64bit_8N.txt | tee -a output/output_RSkip_8N.txt