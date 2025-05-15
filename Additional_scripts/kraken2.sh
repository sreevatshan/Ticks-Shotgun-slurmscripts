#!/bin/bash
#SBATCH --job-name=kraken2_final
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 20
#SBATCH --mem=64000
#SBATCH --time=72:00:00
#SBATCH -o kraken2_final.out
#SBATCH -e log_kraken2_final.err
for sample in `ls Tick-seq/final-preprocessing/*_R1_paired.fastq.gz`
do
	dir="Tick-seq/final-preprocessing"
	dir2="Tick-seq/final-kraken2"
	base=$(basename $sample "_R1_paired.fastq.gz")

kraken2 --db Kraken2-db --fastq-input --use-names --paired ${dir}/${base}_R1_paired.fastq.gz ${dir}/${base}_R2_paired.fastq.gz --output ${dir2}/${base} --report ${dir2}/${base}.report --memory-mapping --threads 64
done

