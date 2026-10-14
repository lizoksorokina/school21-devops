#!/bin/bash

cat=$(cat cat.c)
cat2=$(./s21_cat s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS"
else
    echo "FAILED"
fi

cat=$(cat -n s21_cat.c)
cat2=$(./s21_cat -n s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-n)"
else
    echo "FAILED (-n)"
fi

cat=$(cat -b s21_cat.c)
cat2=$(./s21_cat -b s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-b)"
else
    echo "FAILED (-b)"
fi

cat=$(cat -e s21_cat.c)
cat2=$(./s21_cat -e s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-e)"
else
    echo "FAILED (-e)"
fi

cat=$(cat -s s21_cat.c)
cat2=$(./s21_cat -s s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-s)"
else
    echo "FAILED (-s)"
fi

cat=$(cat -t s21_cat.c)
cat2=$(./s21_cat -t s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-t)"
else
    echo "FAILED (-t)"
fi

cat=$(cat -v s21_cat.c)
cat2=$(./s21_cat -v s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-v)"
else
    echo "FAILED (-v)"
fi

cat=$(cat -bn s21_cat.c)
cat2=$(./s21_cat -bn s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-bn)"
else
    echo "FAILED (-bn)"
fi

cat=$(cat -tv s21_cat.c)
cat2=$(./s21_cat -tv s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-tn)"
else
    echo "FAILED (-tn)"
fi

cat=$(cat -snt s21_cat.c)
cat2=$(./s21_cat -snt s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-snt)"
else
    echo "FAILED (-snt)"
fi

cat=$(cat -snt s21_cat.c)
cat2=$(./s21_cat -snt s21_cat.c)
if [ "$cat" = "$cat2" ]; then
    echo "SUCCESS (-snt)"
else
    echo "FAILED (-snt)"
fi