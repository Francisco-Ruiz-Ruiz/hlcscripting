#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

total=0
for suma in {1..10}
do
	echo "El numero ahora vale $suma"
	total=$((total + suma))
	echo "Ahora el total vale $total"
done

