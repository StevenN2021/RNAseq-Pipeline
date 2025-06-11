#!/bin/bash

# This file runs HISAT2 to align RNA-Seq reads to a reference genome and converts to bam files

REF_DIR="/Users/stevennguyen/Bioinformatics/software/hisat2-2.2.1/hisat_indices/grch38"
FASTQ_DIR="/Users/stevennguyen/Bioinformatics/rnaseqdemo/data"
OUTPUT_DIR="/Users/stevennguyen/RNAseq-Pipeline/hisat2_results"

#hisat2 command
hisat2 -q --rna-strandness R -x $REF_DIR/genome -U $FASTQ_DIR/demo_trimmed.fastq \
    -S $OUTPUT_DIR/demo_trimmed.sam --threads 4

# Convert SAM to BAM
samtools view -b $OUTPUT_DIR/demo_trimmed.sam > $OUTPUT_DIR/demo_trimmed.bam

#sort BAM file 
samtools sort $OUTPUT_DIR/demo_trimmed.bam -o $OUTPUT_DIR/demo_trimmed_sorted.bam

# Index the sorted BAM file
samtools index $OUTPUT_DIR/demo_trimmed_sorted.bam