#!/bin/bash

TESTS="aaron_hardin
brad_chapman"

for TEST in $TESTS
do
    echo $TEST
    cd $TEST
    bash test.sh
    cd ..
done
