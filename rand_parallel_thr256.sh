./AlphaTree config/config_partitionMerge_8bit_4N_thr256.txt | tee -a output/out_partitionMerge_thr256_8bit.txt 
./AlphaTree config/config_partitionMerge_8bit_8N_thr256.txt | tee -a output/out_partitionMerge_thr256_8bit.txt

./AlphaTree config/config_hybrid_8bit_4N_thr256.txt | tee -a output/out_hybrid_thr256_8bit.txt
./AlphaTree config/config_hybrid_8bit_8N_thr256.txt | tee -a output/out_hybrid_thr256_8bit.txt

./AlphaTree config/config_hybrid_32bit_4N_thr256.txt | tee -a output/out_hybrid_thr256_32bit.txt
./AlphaTree config/config_hybrid_32bit_8N_thr256.txt | tee -a output/out_hybrid_thr256_32bit.txt

./AlphaTree config/config_hybrid_64bit_4N_thr256.txt | tee -a output/out_hybrid_thr256_64bit.txt
./AlphaTree config/config_hybrid_64bit_8N_thr256.txt | tee -a output/out_hybrid_thr256_64bit.txt