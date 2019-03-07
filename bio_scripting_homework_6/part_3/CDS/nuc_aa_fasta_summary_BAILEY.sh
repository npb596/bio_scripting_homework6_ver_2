#!/bin/bash

for file in ./*.cds
do

awk '{print $1}' $file > "$file"_abridged
/home/shared/biobootcamp/bin/get_fasta_stats.pl -T -g "$file"_abridged > "$file"_stats
transeq -sformat pearson -sequence "$file"_abridged -outseq "$file"_abridged.pep 

done

for file in ./*.pep
/home/shared/biobootcamp/bin/get_fasta_stats.pl -t "$file"_abridged.pep > "$file"_pep_stats

done
