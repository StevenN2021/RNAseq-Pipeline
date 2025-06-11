#!/bin/bash

#This file runs quality control on our fastq files using fastqc software
#and trims the raw reads if necessary 

INPUT_PATH="/Users/stevennguyen/Bioinformatics/rnaseqdemo/data/"

cd $INPUT_PATH
fastqc demo.fastq -o /Users/stevennguyen/RNAseq-Pipeline/fastqc/


#run trimmomatic
java -jar /Users/stevennguyen/Bioinformatics/software/Trimmomatic-0.39/trimmomatic-0.39.jar \
SE -threads 4 data/demo.fastq data/demo_trimmed.fastq TRAILING:10 -phred33

#run fastqc on the trimmed reads
fastqc demo_trimmed.fastq -o /Users/stevennguyen/RNAseq-Pipeline/fastqc/







