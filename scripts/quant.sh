#!/bin/bash

#this file runs feature counts to quantify the number of reads that map to each gene

GTF_FILE="/Users/stevennguyen/Bioinformatics/hg38/gencode.v45.annotation.gtf"
OUT_DIR="/Users/stevennguyen/RNAseq-Pipeline/quants"
BAM_DIR="/Users/stevennguyen/Bioinformatics/rnaseqdemo/data/aligned"

#command
featurecounts \
    -a $GTF_FILE \
    -o "$OUT_DIR/demo_featurecounts.txt" \
    -T 4 \
    "$BAM_DIR/demo_trimmed_sorted.bam" 




