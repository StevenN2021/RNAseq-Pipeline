# RNAseq-Pipeline
Contains scripts for RNASeq alignment and expression 

## runpipeline.sh
Runs the entire pipeline with one bash script

## runfastqc.sh 
Runs FASTQC on fastq files and trims low quality reads after 

## hisatalignment.sh 
Aligns reads to human reference genome using HISAT2
Creates SAM -> indexed and sorted BAM file 

## quant.sh 
Runs featurecounts on sorted bam file to quantify reads for each gene and
create counts matrix 
