# Seedwing Benchmarks

*WIP* This is work in progress, not all benchmarks are complete

This repository contains benchmarks used to compare the performance of Open Policy Agent (OPA) and Seedwing Policy. OPA is an established project, and there is an overlap of the capabilities, even though Seedwing is focusing on supply chain security.

The benchmarks try to reduce external factors, and cover some basic use cases that both policy engines support, with the goal of adding more use cases as needed. All the sources and results of the benchmark are made public and can be re-run by users evaluating.

The rules and patterns in this benchmark are constructed to be optimal for each of these engines, to make it an as fair as possible comparison.

## Test cases

* Integer comparison. Matching a number being equal to a particular value
* String comparison. Exactly matching a string.
* JSON comparison. Validating a CycloneDX JSON structure for license compliance
* Network address check. Checking IP against a range.
* Compound expressions: a mix of integer and string matches with logical AND and logical OR operators.

## Methodology

To run the test, the benchmarking commands for each policy engine is used.

For OPA, the `opa bench` command is used
For Seedwing, the `swio bench` command is used

Each test case is run repeatedly (how many iterations depend on each test case), and average, median and standard deviation are recorded.

## Metrics

The following metrics are collected for each test case

* Evaluation latency - the time to evaluate the policy
* CPU utilization - how efficient the evaluation is
* Memory utilization - memory consumption for running the test

## Running

To run the benchmark, make sure you have the `opa` and `swio` executables and run `bash run.sh`. The results will be put in the `results/` folder grouped by test case.

## Results

TODO

