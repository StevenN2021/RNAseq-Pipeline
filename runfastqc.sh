#!/bin/bash

#This file runs quality control on our fastq files using fastqc software
#and trims the raw reads if necessary 

INPUT_PATH="/Users/stevennguyen/RNASeq-Pipeline/data"


fastqc demo.fastq -o $INPUT_PATH




