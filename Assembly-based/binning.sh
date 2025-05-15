#!/bin/bash
#SBATCH --job-name=binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 36
#SBATCH --mem=66000
#SBATCH --time=6-12:00:00
#SBATCH -o binning_p4.out
#SBATCH -e log_binning_P4.err
metabat2 -i Tick-seq/final-megahit/final.contigs_hq.fa -o Tick-seq/final-bin -d -v -m 1500
