#!/bin/bash
#
TESTCASES="integer string"

for c in $TESTCASES
do
	mkdir -p results/$c
	opa bench -i testcases/$c/input -d testcases/$c/opa.rego --package test allow -f json --benchmem > results/$c/opa.json
	swio --policy testcases/$c bench --name seedwing::allow --count 10000000 --input testcases/$c/input > results/$c/seedwing.json
done


