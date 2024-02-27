#!/bin/bash

# 2 trimestre

function sumar(){
n1=$1
n2=$2
suma=$(($n1+$n2))
return $suma
}

sumar 4 5

echo $?
