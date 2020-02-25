#! /bin/bash -x


diff -c b.txt a.txt > c.txt

patch -b < c.txt
