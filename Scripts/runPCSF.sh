#!/bin/bash
echo _CONDOR_JOB_IWD $_CONDOR_JOB_IWD
echo Cluster $cluster
echo Process $process
echo RunningOn $runningon

codeD=/mnt/ws/home/dcronin/OmicsIntegrator/scripts

prizefile=/mnt/ws/home/dcronin/osmotic-stress/Notebooks/PrizesNotebook/${prizetype}.txt
edgefile=/mnt/ws/home/dcronin/osmotic-stress/Notebooks/ChasmanNetwork-DirUndir/ChasmanNetwork-DirUndir.txt
dummy=/mnt/ws/home/dcronin/osmotic-stress/Scripts/dummy.txt
msgpath=~/GitterLab/progs/bin/msgsteiner
outlabel=${prizetype}_beta${beta}_mu${mu}_omega${omega}_seed${seed}

CMD="python $codeD/forest.py \
	-p $prizefile \
	-e $edgefile \
	-c $conf \
	-d $dummy \
	--msgpath=$msgpath \
	--outpath=$outpath \
	--outlabel=$outlabel \
	--cyto30 \
	-s $seed"

echo $CMD
$CMD

echo "PCSF version:"
cd $codeD
git log -1
