./AlphaTree config/config_SENTINEL_1ch_18bit_4N.txt | tee -a output/out_SENTINEL_1ch_par.txt
./AlphaTree config/config_SENTINEL_1ch_18bit_8N.txt | tee -a output/out_SENTINEL_1ch_par.txt

./AlphaTree config/config_SENTINEL_1ch_18bit_4N_HQ.txt | tee -a output/out_SENTINEL_1ch_serial.txt
./AlphaTree config/config_SENTINEL_1ch_18bit_8N_HQ.txt | tee -a output/out_SENTINEL_1ch_serial.txt