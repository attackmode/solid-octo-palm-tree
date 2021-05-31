#!/bin/python 

import csv

find_the_truth = ['true']

with open('data/data.csv') as csvfile:
    whatstrue = csv.reader(csvfile)
    out = []
    for find in whatstrue:
        if find[1] in find_the_truth:
            out.append(int(find[0]))
    print("%s is the total truth and nothing but the truth"% (sum(out)))
