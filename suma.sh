#!/bin/bash

# script: script
# descripcion: suma con variables
# autor: Francisco Ruiz

declare -i a
declare -i b
declare -i c

echo "Introduzca el primer numero"
read a
echo "Introduzca el segundo numero"
read b
c=$(($a+$b))
echo "$a + $b = $c"
