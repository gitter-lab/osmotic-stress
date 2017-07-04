export outpath=/mnt/ws/home/dcronin/NoisePCSF-06_30_17
mkdir -p $outpath
D=10
r=0.01
g=1e-3
Prizes=prizes
b=1.75
m=0.095
w=4.5
filename=../../NoiseOutput/_w${w}_b${b}_D${D}_m${m}_r${r}_g${g}.txt
rm -f $filename
touch $filename
printf "w = ${w}\n" >> $filename
printf "b = ${b}\n" >> $filename
printf "D = ${D}\n" >> $filename
printf "mu = ${m}\n" >> $filename
printf "r = ${r}\n" >> $filename
printf "g = ${g}\n" >> $filename
for s in $(seq 1 1000)
do
	export conf=$filename
	export beta=$b
	export mu=$m
	export omega=$w
	export prizetype=$Prizes
	export seed=$s
	condor_submit submitPCSF_080116.sub
done
