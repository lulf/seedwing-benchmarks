#!/bin/bash
#
set -x

TESTCASES="integer string json keylime_mb"
#TESTCASES="keylime_mb"

for c in $TESTCASES
do
	mkdir -p results/$c
	opa bench --data testcases/$c/opa.rego --package test allow --input testcases/$c/input -f json --benchmem > results/$c/opa.json
	swio bench --policy testcases/$c --name seedwing::allow  --input testcases/$c/input --count 1000 > results/$c/seedwing.json
done


