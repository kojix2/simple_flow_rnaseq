#!/bin/bash
set -euo pipefail
ROOT="$(cd $(dirname $0); pwd)"
. "$ROOT/0_config.sh"

STAR --genomeDir ${star_dir} --runThreadN ${ths} \
	--outFileNamePrefix ${id} \
	--quantMode TranscriptomeSAM \
	--outSAMtype BAM SortedByCoordinate \
	--outSAMunmapped Within \
	--readFilesIn ${fastq1} ${fastq2} \
	--limitBAMsortRAM ${limitbamsortram} \
	--readFilesCommand gunzip -c
