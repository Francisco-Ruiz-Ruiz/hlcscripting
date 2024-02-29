#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

clear

diasSemana=(lunes martes miercoles jueves viernes sabado domingo)

echo ${diasSemana[6]}
echo ${diasSemana[*]}

declare -a numerosPares=(2 4 6 8 10 12 14 16 18 20 22 24 26 28 30)
echo ${numerosPares[*]} 

declare -a sistemasOperativos=('Windows 10' mac 'Linux Mint')
echo ${sistemasOperativos[*]}

vocales[0]=a
vocales[1]=e
vocales[2]=i
vocales[3]=o
vocales[4]=u

echo ${vocales[*]}

for i in "${vocales[*]}"; do
        echo $i
        let contador=$contador+1
	echo $contador
done
