#!/bin/bash
#SBATCH --job-name=assembly_trimmo-25-bowtie2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 20
#SBATCH --mem=150000
#SBATCH --time=240:00:00
#SBATCH -o assembly_final_bowtie2.out
#SBATCH -e assembly_final_bowtie2.err
megahit -1 Tick-seq/Bowtie-trimmo-25/Sample_P6_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P16_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P7_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P8_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P1_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P9_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P2_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P10_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P3_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P4_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P13_R1.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P5_R1.fastq.gz -2 Tick-seq/Bowtie-trimmo-25/Sample_P6_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P16_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P7_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P8_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P1_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P9_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P2_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P10_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P3_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P4_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P13_R2.fastq.gz,Tick-seq/Bowtie-trimmo-25/Sample_P5_R2.fastq.gz -t 20 --out-dir Tick-seq/final-megahit-bowtie2
