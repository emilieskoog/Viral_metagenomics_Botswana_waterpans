#!/bin/bash

for f in $(cat sorted_bam_files.txt)
do
coverm contig -t 32 -m rpkm -b $f --min-read-percent-identity 0.95 --min-covered-fraction 0.5 -o coverm_output_${f}_rpkm

done
