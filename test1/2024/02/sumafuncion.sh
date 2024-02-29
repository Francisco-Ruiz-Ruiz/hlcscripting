#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

function sumar(){
    n1=$1
    n2=$2
    suma=$(($n1+$n2))
    return $suma
}

sumar 4 5
echo $?
     
