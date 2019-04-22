#!/bin/bash

years='2019 2018 2017 2016 2015 2014 2013 2012 2011 2010 2009 2008 2007 2006 2005 2004 2003 2002 2001 2000 1999 1998 1997 1996 1995 1994 1993 1992 1991'

echo on

cp ../techreports/texmf/bibtex/bib/csdl-trs.bib .

for year in $years
do
  bib2bib -ob $year.bib -c year=$year csdl-trs.bib
  openout_any=a bibtex2html -dl -nodoc -nobibsource -nokeys -nokeywords -nofooter $year.bib
done



