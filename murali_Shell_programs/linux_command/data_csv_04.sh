#! /bin/bash -x

cat data.csv | awk '{sum+=$4} END{print "avg base pay = "  sum/NR}'
