#!/bin/bash
#SBATCH --job-name=metaphlan_p11
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 20
#SBATCH --mem=32000
#SBATCH --time=120:00:00
#SBATCH -o metaphlan_p11.out
#SBATCH -e log_metaphlan_p11.err
metaphlan Tick-seq/Trimmed-files/NS.1963.004.IDT_i7_167---IDT_i5_167.P11_R1_paired.fastq.gz,Tick-seq/Trimmed-files/NS.1963.004.IDT_i7_167---IDT_i5_167.P11_R2_paired.fastq.gz --bowtie2out P11 --bowtie2db metaphlandb -o P11.txt --use_group_representative --input_type fastq --unclassified_estimation --bt2_ps very-sensitive-local --bt2_ps very-sensitive-local
