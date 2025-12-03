# Experiment Design — Parallel Quicksort

## Controlled Variables
- Threads: 1, 2, 4, 8
- Input size: 100k, 500k
- Repetitions: 5 per configuration

## Response Variable
Execution time (milliseconds).

## Improvements
- Randomized the order of execution
- Increased repetitions for better statistical power
- Several input sizes to stabilize trends
- Identification of noise sources:
  - CPU frequency scaling
  - OS interruptions
  - Cache/memory effects

## Extraction
Convert raw logs to CSV:

perl extractor.pl data/raw/*.log > data/processed/results.csv

Synthetic data is used here to focus on analysis only.
