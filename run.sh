#!/bin/bash
#
TESTCASES="integer string"

for c in $TESTCASES
do
	opa bench -i testcases/$c/input -d testcases/$c/rego/test.rego --package test allow -f json --benchmem > testcases/$c/opa.json
	seedwing-policy-cli -p testcases/$c/seedwing bench --name test::allow --iterations 10000000 --input testcases/$c/input > testcases/$c/seedwing.json
done


