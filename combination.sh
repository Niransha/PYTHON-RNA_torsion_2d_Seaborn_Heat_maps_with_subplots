#!/bin/bash

for torx in $(cat tor_list); 
do 
 #   myArr[${#myArr[@]}]="$uritem"; 
   # echo ${myArr[@]} ;  ###########

cd plots 

cd $torx

#cp ../../plotter_v1.ipynb ./
#sed -i "s/alpha/$torx/g" plotter_v1.ipynb
#mv plotter_v1.ipynb plotter_$torx.ipynb

#rm *.png slurm*

#s batch ../../submit.sbatch.job.sh

cd ../
cd ../  # plots





done 

##########

