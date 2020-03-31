#!/bin/bash

pdflatex dissertation
#bibtex dissertation
bibtex thesis_introduction/introduction
bibtex babette_article/article/babette_article
bibtex pirouette_article/pirouette_article
bibtex pirouette_article/pirouette_supplement
bibtex razzo_article/content
bibtex thesis_synthesis/synthesis
pdflatex dissertation
pdflatex dissertation

# Also an option:
#
#   pdflatex dissertation --shell-escape
#
#

# LaTeX creates two empty pages at the start of the thesis.
# Remove these
pdftk dissertation.pdf cat 3-end output thesis.pdf
rm dissertation.pdf

