#!/bin/bash
#SBATCH --job-name=deeparg_predict
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 50
#SBATCH --mem=200000
#SBATCH --time=7-12:00:00
#SBATCH -o deeparg.out
#SBATCH -e deeparg.err

source miniconda3/etc/profile.d/conda.sh

conda activate deeparg_true

        deeparg short_reads_pipeline --forward_pe_file Tick-seq/final-preprocessing/Sample_P11_1.fastq --reverse_pe_file Tick-seq/final-preprocessing/Sample_P11_2.fastq --output_file Tick-seq/final-deeparg -d deeparg_data
