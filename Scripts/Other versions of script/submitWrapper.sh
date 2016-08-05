export outpath=/mnt/ws/home/dcronin/PCSF-072916
mkdir -p $outpath
D=10
r=0
g=1e-3
Prizes=prizes
s=122815
for b in $(seq 0.25 0.25 10.0)
do
	for m in $(seq 0 0.005 0.1)
	do
		for w in $(seq 0.5 0.5 10.0)
		do
			filename=./Parameters/conf_w${w}_b${b}_D${D}_m${m}_r${r}_g${g}.txt
			touch $filename
			printf "w = ${w}\n" >> $filename
			printf "b = ${b}\n" >> $filename
			printf "D = ${D}\n" >> $filename
			printf "mu = ${m}\n" >> $filename
			printf "r = ${r}\n" >> $filename
			printf "g = ${g}\n" >> $filename
			export conf=$filename
			export beta=$b
			export mu=$m
			export omega=$w
			export prizetype=$Prizes
			export seed=$s
			condor_submit submitPCSF.sub
		done
	done
done
