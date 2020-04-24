#!/bin/bash

pdflatex dissertation > /dev/null
#bibtex dissertation
bibtex thesis_introduction/introduction > /dev/null
bibtex babette_article/article/babette_article > /dev/null
bibtex pirouette_article/pirouette_article > /dev/null
bibtex pirouette_article/pirouette_supplement > /dev/null
bibtex razzo_article/razzo_article > /dev/null
bibtex thesis_synthesis/synthesis > /dev/null
bibtex summary/summary > /dev/null
bibtex samenvatting/samenvatting > /dev/null
pdflatex dissertation > /dev/null
pdflatex dissertation > /dev/null
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

