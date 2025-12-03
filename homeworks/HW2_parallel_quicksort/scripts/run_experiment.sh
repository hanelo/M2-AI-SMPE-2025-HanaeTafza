#!/bin/bash

THREADS=(1 2 4 8)
SIZES=(100000 200000 500000 1000000)
REPS=5

OUTDIR=../data/raw
mkdir -p $OUTDIR

for t in "${THREADS[@]}"; do
    for n in "${SIZES[@]}"; do
        for r in $(seq 1 $REPS); do
            echo "Running: t=$t n=$n rep=$r"
            ./quicksort -t $t -n $n > $OUTDIR/run_t${t}_n${n}_r${r}.log
        done
    done
done
