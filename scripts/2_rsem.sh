#!/bin/bash
set -euo pipefail
ROOT="$(cd $(dirname $0); pwd)"
. "$ROOT/0_config.sh"

rsem-calculate-expression --alignments --paired-end -p ${ths} \
	--strandedness reverse --append-names --estimate-rspd \
	${id}Aligned.toTranscriptome.out.bam ${rsem_dir}/hg \
	${id}
