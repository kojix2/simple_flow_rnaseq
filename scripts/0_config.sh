#!/bin/bash
id=""
star_dir=/SSD2T/data/star
rsem_dir=/SSD2T/data/rsem
ths=15
limitbamsortram=44121600086

fastq1=${id}.sra_1.fastq.gz
fastq2=${id}.sra_2.fastq.gz

if [ "$id" = "" ]; then
  echo "Please set your id."
  exit 1
fi