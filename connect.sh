ssh -X p284195@interactive1.hb.hpc.rug.nl
scp -r /home/jiwoo/AlphaTreeAlgorithms/config/*  p284195@login1.hb.hpc.rug.nl:AlphaTreeExp/config
scp -r ./*.png  p284195@login1.hb.hpc.rug.nl:AlphaTreeExp
module load OpenCV/4.6.0-foss-2022a-contrib; make remake