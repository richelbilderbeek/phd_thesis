#!/bin/bash
pdftk thesis.pdf cat 2-end output thesis_content.pdf
pdftk thesis.pdf cat 1 output thesis_cover.pdf

