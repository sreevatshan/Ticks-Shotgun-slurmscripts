#!/bin/bash
#SBATCH --job-name=ccMetagen
#SBATCH --mail-type=ALL
#SBATCH --mail-user=22kpg1@queensu.ca
#SBATCH -c 50
#SBATCH --mem=200000
#SBATCH --time=7-12:00:00
#SBATCH -o ccMetagen-bowtie.out
#SBATCH -e log_ccMetagen-bowtie.err

source miniconda3/etc/profile.d/conda.sh

conda activate ccMetagen

input_dir=Tick-seq/final-kma-bowtie
output_dir=Tick-seq/final-ccMetagen-bowtie
mkdir $output_dir
for f in $input_dir/*.res; do
	out=$output_dir/${f/$input_dir\/}
	CCMetagen.py -i $f -o $out
done
