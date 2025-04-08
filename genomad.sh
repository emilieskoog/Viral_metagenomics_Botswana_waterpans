#code for identifying viral sequences in metagenomes sequenced from Botswana water pans

conda activate genomad

#assemblies.txt contains the name of the water pan metagenomes

for i in $(cat assemblies.txt)
do
genomad end-to-end --cleanup --splits 8 --threads 32 /data_store/shared_work/botswana_2022/20230430_assemblies/$i  genomad_botswana_output_$i /home/eskoog/genomad_db
done
