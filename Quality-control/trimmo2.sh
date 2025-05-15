#!/bin/bash
#SBATCH --job-name=trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 20
#SBATCH --mem=32000
#SBATCH --time=48:00:00
#SBATCH -o trimmo.out
#SBATCH -e log_trim.err
for R1 in *Tick-seq/Aug2022tickShotgunMetagenomeNovaSeq/*_R1.fastq.gz*
do
	R2=${R1//R1.fastq.gz/R2.fastq.gz}
	R1paired=${R1//.fastq.gz/_paired.fastq.gz}
	R1unpaired=${R1//.fastq.gz/_unpaired.fastq.gz}
	R2paired=${R2//.fastq.gz/_paired.fastq.gz}
	R2unpaired=${R2//.fastq.gz/_unpaired.fastq.gz}
	trimmomatic PE -threads 64 $R1 $R2 $R1paired $R1unpaired $R2paired $R2unpaired ILLUMINACLIP:tick_adaptor.fasta:2:30:10 SLIDINGWINDOW:4:25 MINLEN:40
done
