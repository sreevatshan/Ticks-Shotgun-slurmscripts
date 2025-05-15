#!/bin/bash
#SBATCH --job-name=metaphlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 20
#SBATCH --mem=32000
#SBATCH --time=120:00:00
#SBATCH -o metaphlan.out
#SBATCH -e log_metaphlan.err
for sample in Tick-seq/Trimmed-files/*_R1_paired.fastq.gz
do
	dir="Tick-seq/Trimmed-files"
	base=$(basename $sample "_R1_paired.fastq.gz")
	metaphlan ${dir}/${base}_R1_paired.fastq.gz,${dir}/${base}_R2_paired.gz --bowtie2db metaphlandb  --bowtie2out ${dir}/${base} -o ${dir}/${base}.txt --use_group_representative --input_type fastq --nproc 15 --add_viruses
done
