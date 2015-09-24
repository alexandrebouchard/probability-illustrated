#!/bin/bash

LATEX_FILE=document.tex
TEMP_FIG_NAMES=.fignames.temp

# create the latex
cp $LATEX_FILE ${LATEX_FILE}.bu
insert-fig-template -input ${LATEX_FILE}.bu -latexTemplate figures/figure-tex-template.txt  -saveNameLocation $TEMP_FIG_NAMES > $LATEX_FILE

# create the graffle files
for FIG_NAME in `cat $TEMP_FIG_NAMES`
do
  CURRENT_GRAFFLE=figures/${FIG_NAME}.graffle
  PDF_FILE=figures/${FIG_NAME}.pdf
  cp figures/template.graffle $CURRENT_GRAFFLE
  open $CURRENT_GRAFFLE
  graffle $CURRENT_GRAFFLE $PDF_FILE
done
rm $TEMP_FIG_NAMES