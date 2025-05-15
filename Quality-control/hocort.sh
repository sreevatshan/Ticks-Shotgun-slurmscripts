#!/bin/bash
#SBATCH --job-name=hocort
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 36
#SBATCH --mem=66000
#SBATCH --time=6-12:00:00
#SBATCH -o bowtie2.out
#SBATCH -e log_bow.err
for sample in `ls Tick-seq/Trimmed-files/*_R1_paired.fastq`
do
	dir="Tick-seq/Trimmed-files"
	dir2="Tick-seq/hisat2"
	base=$(basename $sample "_R1_paired.fastq")
	hocort map hisat2 -x Tick-seq/tick_hisat2/hisat2-index -i {dir}/{base}_R1_paired.fastq {dir}/{base}_R2_paired.fastq -o {dir2}/{base}_R1_paired.fastq {dir2}/{base}_R2_paired.fastq -t 20
done
