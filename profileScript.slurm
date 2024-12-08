#!/bin/bash
#SBATCH --job-name=atree_test
#SBATCH --ntasks=1         
#SBATCH --time=03:00:00
#SBATCH --cpus-per-task=128
#SBATCH --mem=200G
#SBATCH --partition=regular

module load OpenCV/4.6.0-foss-2022a-contrib

./AlphaTree profileConfig8.txt; gprof AlphaTree gmon.out > profile8.txt
./AlphaTree profileConfig10.txt; gprof AlphaTree gmon.out > profile10.txt
./AlphaTree profileConfig12.txt; gprof AlphaTree gmon.out > profile12.txt
./AlphaTree profileConfig14.txt; gprof AlphaTree gmon.out > profile14.txt
./AlphaTree profileConfig16.txt; gprof AlphaTree gmon.out > profile16.txt
./AlphaTree profileConfig18.txt; gprof AlphaTree gmon.out > profile18.txt
./AlphaTree profileConfig21.txt; gprof AlphaTree gmon.out > profile21.txt
./AlphaTree profileConfig24.txt; gprof AlphaTree gmon.out > profile24.txt
./AlphaTree profileConfig28.txt; gprof AlphaTree gmon.out > profile28.txt
./AlphaTree profileConfig32.txt; gprof AlphaTree gmon.out > profile32.txt
./AlphaTree profileConfig64.txt; gprof AlphaTree gmon.out > profile64.txt