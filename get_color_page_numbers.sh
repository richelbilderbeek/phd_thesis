#!/bin/bash
gs -q -o - -sDEVICE=inkcov thesis.pdf > tmp.txt ; cat -n tmp.txt | egrep -v "0.00000  0.00000  0.00000" | cut -f 1 | paste -sd "," - | sed 's/ //g'


# Results:
#
# 1,2,3,4,10,11,12,13,14,15,17,18,19,20,21,22,41,49,51,52,65,71,73,74,75,76,77,78,79,80,81,82,83,85,86,87,88,91,92,93,94,95,96,97,106,107,108,109,117,119,121,124,125,126,132,136
#
# Hand-picked:
#
#   2,       11,12,13,14,15,17,   19,20,21,22,41,49,   52,65,71,73,74,75,76,77,78,79,80,81,82,83,85,86,87,88,91,92,93,94,95,96,97,    107,108,109,        121,124,125,126
# 2,11,12,13,14,15,17,19,20,21,22,41,49,52,65,71,73,74,75,76,77,78,79,80,81,82,83,85,86,87,88,91,92,93,94,95,96,97,107,108,109,121,124,125,126
# 1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5  6  7  8   9   0   1   2   3   4   5
#                            1                             2                             3                               4
