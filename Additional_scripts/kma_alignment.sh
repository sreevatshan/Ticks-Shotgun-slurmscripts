#!/bin/bash
#SBATCH --job-name=kma
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 50
#SBATCH --mem=200000
#SBATCH --time=7-12:00:00
#SBATCH -o kma_bowtie2.out
#SBATCH -e log_kma_bowtie2.err

module load StdEnv/2020
module load kma/1.3.25

input_dir=Tick-seq/Bowtie-trimmo-25
output_dir=Tick-seq/final-kma-bowtie
nt_db=compress_ncbi_nt/ncbi_nt

for r1 in $input_dir/*_R1.fastq.gz; do
	r2=${r1/_1.fastq/_R2.fastq.gz}
	o_part1=$output_dir/${r1/$input_dir\//''}
	o=${o_part1/._*/}
        kma -ipe $r1 $r2 -o $o -t_db $nt_db -t 4 -1t1 -mem_mode -and -apm f
done
