#!/bin/bash

bibtool -s -d \
  thesis_introduction/introduction.bib \
  babette_article/article/babette_article.bib \
  pirouette_article/article.bib \
  razzo_article/article/article.bib \
  thesis_synthesis/synthesis.bib \
  -o dissertation.bib
