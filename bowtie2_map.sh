#!/bin/bash

for f in $(cat all_metagenome_headers.txt)
do

R1="/data_store/shared_work/botswana_2022/assembly/${f}_filt_R1.fq.gz"
R2="/data_store/shared_work/botswana_2022/assembly/${f}_filt_R2.fq.gz"

# Run bowtie2 commands
bowtie2 --no-unal --very-sensitive -p 64 -q -x botswana_all_viral_contigs -1 "$R1" -2 "$R2" -S ${f}.sam
samtools view -S -b ${f}.sam > ${f}.bam &&
rm ${f}.sam
samtools sort -o ${f}_sorted.bam -O bam ${f}.bam

done
