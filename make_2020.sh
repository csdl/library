#!/bin/bash

years='2020'

echo on

cp ../techreports/texmf/bibtex/bib/csdl-trs.bib .

for year in $years
do
  bib2bib -ob $year.bib -c year=$year csdl-trs.bib
  openout_any=a bibtex2html -dl -nodoc -nobibsource -nokeys -nokeywords -nofooter $year.bib
done



