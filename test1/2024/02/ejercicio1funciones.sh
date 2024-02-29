#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

function mensaje(){
    if [ $# -eq 0 ]; then
	    echo "Hola Mundo"
    elif [ $# -eq 1 ]; then
	    echo "Hola" $1
    else
	    echo "Demasiados argumentos"
    fi
}

mensaje
mensaje Cordoba
mensaje Madrid
mensaje sri lanka
