#!/bin/bash

latexmk -quiet -pdf -bibtex  document.tex
cp document.pdf ~/courses/547/web/files/notes.pdf