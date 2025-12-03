#!/bin/bash

OUTDIR=../data/raw
mkdir -p $OUTDIR

declare -a THREADS=("1" "2" "4" "8")
declare -a SIZES=("100000" "200000" "500000" "1000000")

for t in "${THREADS[@]}"; do
    for n in "${SIZES[@]}"; do
        for r in {1..5}; do
            echo "$t $n $r"
        done
    done
done | shuf | while read t n r; do
    echo "Running randomized: threads=$t size=$n repetition=$r"
    ./quicksort -t $t -n $n > $OUTDIR/run_t${t}_n${n}_r${r}.log
done
