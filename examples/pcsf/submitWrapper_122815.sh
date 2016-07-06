#!/bin/bash
# Submit PCSF runs with different params, prizes, and seeds
# Sets up a new configuration file as needed and uses
# environment variables to pass other arguments to PCSF.py

# Set the output directory for PCSF and HTCondor output
export outpath=/mnt/ws/home/agitter/projects/kshv/results/122815
mkdir -p $outpath

# Parameters that do not vary
D=10
#r=0.01 Add noise later when computing a family of solutions
r=0
g=1e-3
prizes=maxProteinScores2KM_tfPrizes
# Fix the seed because each run will have different parameters
# Don't use a leading 0s in the seed or optparse will parse as an octal value
s=122815

# Loop over beta, mu, and omega
for b in $(seq 0.25 0.25 5.0)
do
	for m in $(seq 0 0.005 0.1)
	do
		for w in $(seq 0.5 0.5 3.0)
		do
			# Create the conf file
			filename=conf/conf_w${w}_b${b}_D${D}_m${m}_r${r}_g${g}.txt
			touch $filename
			printf "w = ${w}\n" >> $filename
			printf "b = ${b}\n" >> $filename
			printf "D = ${D}\n" >> $filename
			printf "mu = ${m}\n" >> $filename
			printf "r = ${r}\n" >> $filename
			printf "g = ${g}\n" >> $filename

			# Set the remaining environment variables
			export conf=$filename
			export beta=$b
			export mu=$m
			export omega=$w
			export prizetype=$prizes
			export seed=$s

			# Submit the job to HTCondor with the configuration file, params, and seed
			condor_submit submitPCSF_122815.sub
		done
	done
done