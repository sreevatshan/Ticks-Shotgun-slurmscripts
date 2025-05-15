These are the slurm scripts I had used for my master thesis results. Modify the script based on your filepath and name!!

Tools used:
a) Quality Control
1) FASTQc and MultiQC 
2) Trimmomatic
3) HoCoRT

b) Read-based 
1) GOTTCHA2 - Taxonomic annotation
2) Krona - Visualization

c) Assembly based
1) MegaHIT - Assembly
2) MetaQUAST - QC of assembly
3) metaWRAP - Binning of assembled file
4) CheckM - Assessing the quality of binned file
5) GTDB-tk - Taxonomic annotation of binned sequences

Note - I had ran couple of tools directly in command-line (CLI) without script because either it was simple one line command which did not needed a separate script or not able to not produce the required output through loops or requires working in separate portal. Notably FASTQc/MultiQC and read-based analysis and Taxonomic annotation in Assembly based.
