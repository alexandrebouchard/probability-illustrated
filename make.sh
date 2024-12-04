#!/bin/bash

latexmk -quiet -pdf -bibtex  document.tex
cp document.pdf ~/web/pub/probability-illustrated.pdf

echo Run web-deploy to complete publication process