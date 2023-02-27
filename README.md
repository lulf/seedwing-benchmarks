# Seedwing Benchmarks

*WIP* This is work in progress, not all benchmarks are complete

This repository contains benchmarks used to compare the performance of Open Policy Agent (OPA) and Seedwing Policy. OPA is an established project, and there is an overlap of the capabilities, even though Seedwing is focusing on supply chain security.

The benchmarks try to reduce external factors, and cover some basic use cases that both policy engines support, with the goal of adding more use cases as needed. All the sources and results of the benchmark are made public and can be re-run by users evaluating.

The rules and patterns in this benchmark are constructed to be optimal for each of these engines, to make it an as fair as possible comparison.

## Test cases

* Integer comparison. Matching a number being equal to a particular value
* String comparison. Exactly matching a string.
* JSON comparison. Validating a CycloneDX JSON structure for license compliance

You can inspect the policies and the inputs in the `testcases/` folder.

## Methodology

To run the test, the benchmarking commands for each policy engine is used.

For OPA, the `opa bench` command is used
For Seedwing, the `swio bench` command is used

Each test case is run repeatedly (how many iterations depend on each test case), and average, median, standard deviation and percentiles are recorded.

## Metrics

The following metrics are collected for each test case

* Evaluation latency - the time to evaluate the policy (lower is better)
* (TODO) CPU utilization - how efficient the evaluation is
* (TODO) Memory utilization - memory consumption for running the test

## Running

To run the benchmark, make sure you have the `opa` and `swio` executables and run `bash run.sh`. The results will be put in the `results/` folder grouped by test case.

## Preliminary results

The benchmarks are still in development, but so far, running on an Macbook Air M1, p99 evaluation latency (ns) looks like the following (lower is better):

| Benchmark |     OPA | Seedwing | Speedup |
| :---      |    ---: |     ---: |    ---: |
| Integer   |   13742 |    *293* |     71x |
| String    |   48735 |    *293* |    166x |
| JSON      | 1452139 | *232447* |      6x |

NOTE: CPU and memory utilization numbers are not yet captured. 
