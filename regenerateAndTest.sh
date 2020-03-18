#!/usr/bin/env bash

PYTHON=$(which python3)

set -e

cd examples

rm -rf *dat *nml LEMS* x86_64 *mod *hoc

echo
echo "**** Running Example 1 ****"
$PYTHON Example1.py

echo
echo "**** Running Example 2 ****"
$PYTHON Example2.py
$PYTHON Example2.py -nml

echo
echo "**** Running Example 3 ****"
$PYTHON Example3.py
$PYTHON Example3.py -netpyne
$PYTHON Example3.py -jnmlnrn
$PYTHON Example3.py -jnmlnetpyne
#$PYTHON Example3.py -sonata

echo
echo "**** Running Example 4 ****"
$PYTHON Example4.py
$PYTHON Example4.py -netpyne
$PYTHON Example4.py -pynnnest
$PYTHON Example4.py -pynnnrn
$PYTHON Example4.py -pynnbrian
$PYTHON Example4.py -jnmlnetpyne
$PYTHON Example4.py -jnmlnrn
$PYTHON Example4.py -jnml

echo
echo "**** Running Example 5 ****"
$PYTHON Example5.py
#$PYTHON Example5.py -netpyne  # Takes 2-3 mins

echo
echo "**** Running Example 6 ****"
$PYTHON Example6.py
$PYTHON Example6.py -nml
$PYTHON Example6.py -nml -noinputs

echo
echo "**** Running Example 7 ****"
$PYTHON Example7.py
$PYTHON Example7.py -jnmlnrn
$PYTHON Example7.py -jnml
$PYTHON Example7.py -pynnnest
$PYTHON Example7.py -pynnnrn

echo
echo "**** Running Example 8 ****"
$PYTHON Example8.py
#$PYTHON Example8.py -jnmlnrn
#$PYTHON Example8.py -jnml

jnml -validate *nml  # All until now should be valid...

echo
echo "**** Running Example 9 ****"
$PYTHON Example9.py
$PYTHON Example9.py -jnml


echo
echo "**** Running Example 10 ****"
$PYTHON Example10.py
$PYTHON Example10.py -jnml

echo
echo "**** Running Example 11 ****"
$PYTHON Example11.py
$PYTHON Example11.py -jnml


cd ../neuromllite/test

nosetests -vs

cd -

echo
echo "** All generated and tested! **"

cd ..
