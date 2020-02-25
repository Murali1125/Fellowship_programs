#! /bin/bash -x
cat data.csv| grep -i CAPTAIN | awk '{ sum+=$7} END{print sum}'
