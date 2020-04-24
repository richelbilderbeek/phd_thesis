#!/bin/bash

echo "pdflatex 1/4"
pdflatex dissertation > /dev/null
#bibtex dissertation
bibtex thesis_introduction/introduction > /dev/null
bibtex babette_article/article/babette_article > /dev/null
bibtex pirouette_article/pirouette_article > /dev/null
bibtex pirouette_article/pirouette_supplement > /dev/null
bibtex razzo_article/razzo_article > /dev/null
bibtex thesis_synthesis/synthesis > /dev/null
echo "pdflatex 2/4"
pdflatex dissertation > /dev/null
echo "pdflatex 3/4"
pdflatex dissertation > /dev/null
echo "pdflatex 4/4"
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

