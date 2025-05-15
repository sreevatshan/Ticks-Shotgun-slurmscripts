#!/bin/bash
#SBATCH --job-name=metaquast_hisat2
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 20
#SBATCH --mem=100000
#SBATCH --time=48:00:00
#SBATCH -o metaquast_hisat2.out
#SBATCH -e log_metaquast_hisat2.err

metaquast -o Tick-seq/Megahit_hisat2_quast -t 20 Tick-seq/hisat2_megahit_assembly/final.contigs.fa
