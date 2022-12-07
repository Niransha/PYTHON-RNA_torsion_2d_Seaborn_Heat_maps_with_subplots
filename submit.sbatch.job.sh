#!/bin/bash
#SBATCH -J test
##SBATCH -N 1
#SBATCH -n 6
#SBATCH --mem=20gb
##SBATCH --exclusive
#SBATCH --exclude=node[023,026-028,032,038-039,041,045,056],nodeamd[012-016],node092,node[021,024,087,091]
##SBATCH --nodelist=node029
##SBATCH -p shortq7
#SBATCH -p longq7
#SBATCH -t 168:00:00

hostname
date
sleep 1
cd $SLURM_SUBMIT_DIR

jupyter nbconvert --ExecutePreprocessor.timeout=-1 --to notebook --execute plotter_*.ipynb

#
#jupyter nbconvert --ExecutePreprocessor.timeout=-1 --to notebook --execute --clear-output plotter_*.ipynb


#echo "1 2 3 4 5"

date


