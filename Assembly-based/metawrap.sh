#!/bin/bash
#SBATCH --job-name=maxbin
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 36
#SBATCH --mem=800000
#SBATCH --time=6-12:00:00
#SBATCH -o metawrap.out
#SBATCH -e metawrap.err

eval "$(conda shell.bash hook)"

conda activate metawrap-env

checkm_db=checkm_db/

echo ${checkm_db} | checkm data setRoot ${checkm_db}

metawrap binning -o Tick-seq/final-initial-binning_bowtie2 -t 15 -a Tick-seq/final-megahit-bowtie2/final.contigs.fa --metabat2 --maxbin2 --concoct Tick-seq/Bowtie-trimmo-25/*.fastq
