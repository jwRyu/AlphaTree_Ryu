./AlphaTree config/config_partitionMerge_8bit_4N_thr1.txt | tee -a output/out_partitionMerge_thr1_8bit.txt 
./AlphaTree config/config_partitionMerge_8bit_8N_thr1.txt | tee -a output/out_partitionMerge_thr1_8bit.txt

./AlphaTree config/config_hybrid_8bit_4N_thr1.txt | tee -a output/out_hybrid_thr1_8bit.txt
./AlphaTree config/config_hybrid_8bit_8N_thr1.txt | tee -a output/out_hybrid_thr1_8bit.txt

./AlphaTree config/config_hybrid_32bit_4N_thr1.txt | tee -a output/out_hybrid_thr1_32bit.txt
./AlphaTree config/config_hybrid_32bit_8N_thr1.txt | tee -a output/out_hybrid_thr1_32bit.txt

./AlphaTree config/config_hybrid_64bit_4N_thr1.txt | tee -a output/out_hybrid_thr1_64bit.txt
./AlphaTree config/config_hybrid_64bit_8N_thr1.txt | tee -a output/out_hybrid_thr1_64bit.txt