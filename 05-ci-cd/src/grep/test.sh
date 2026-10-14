#!/bin/bash

grep main s21_grep.c > tmp.txt
./s21_grep main s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS"
else
    echo "FAILED"
fi

grep -e for s21_grep.c > tmp.txt
./s21_grep -e for s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-e)"
else
    echo "FAILED (-e)"
    echo "$result"
fi

grep -ie "-wall" Makefile > tmp.txt
./s21_grep -ie "-wall" Makefile > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-ie)"
else
    echo "FAILED (-ie)"
    echo "$result"
fi

grep -h m Makefile s21_grep.c > tmp.txt
./s21_grep -h m Makefile s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-h)"
else
    echo "FAILED (-h)"
    echo "$result"
fi

grep -v while s21_grep.c > tmp.txt
./s21_grep -v while s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-v)"
else
    echo "FAILED (-v)"
    echo "$result"
fi

grep -c while s21_grep.c> tmp.txt
./s21_grep -c while s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-c)"
else
    echo "FAILED (-c)"
    echo "$result"
fi

grep -l while s21_grep.c > tmp.txt
./s21_grep -l while s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-l)"
else
    echo "FAILED (-l)"
    echo "$result"
fi

grep -n while s21_grep.c > tmp.txt
./s21_grep -n while s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-n)"
else
    echo "FAILED (-n)"
    echo "$result"
fi

grep -s while s21_grep.c text.txt > tmp.txt
./s21_grep -s while s21_grep.c text.txt > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-s)"
else
    echo "FAILED (-s)"
    echo "$result"
fi

grep -f pattern.txt s21_grep.c > tmp.txt
./s21_grep -f pattern.txt s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-f)"
else
    echo "FAILED (-f)"
    echo "$result"
fi

grep -o for s21_grep.c > tmp.txt
./s21_grep -o for s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-o)"
else
    echo "FAILED (-o)"
    echo "$result"
fi

grep -iv for s21_grep.c > tmp.txt
./s21_grep -iv for s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-iv)"
else
    echo "FAILED (-iv)"
    echo "$result"
fi

grep -in while s21_grep.c > tmp.txt
./s21_grep -in while s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-in)"
else
    echo "FAILED (-in)"
    echo "$result"
fi

grep -cv int s21_grep.c > tmp.txt
./s21_grep -cv int s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-cv)"
else
    echo "FAILED (-cv)"
    echo "$result"
fi

grep -lv int s21_grep.c > tmp.txt
./s21_grep -lv int s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-lv)"
else
    echo "FAILED (-lv)"
    echo "$result"
fi

grep -ho if s21_grep.c > tmp.txt
./s21_grep -ho if s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-ho)"
else
    echo "FAILED (-ho)"
    echo "$result"
fi

grep -oi int s21_grep.c > tmp.txt
./s21_grep -oi int s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-oi)"
else
    echo "FAILED (-oi)"
    echo "$result"
fi

grep -nf pattern.txt s21_grep.c > tmp.txt
./s21_grep -nf pattern.txt s21_grep.c > tmp2.txt
result=$(diff tmp.txt tmp2.txt)
if [ -z "$result" ]; then
    echo "SUCCESS (-nf)"
else
    echo "FAILED (-nf)"
    echo "$result"
fi

rm -f tmp.txt tmp2.txt