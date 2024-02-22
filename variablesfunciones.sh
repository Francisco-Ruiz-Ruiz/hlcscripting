#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

function saludo(){

local vlocal1="Paris"
typeset vlocal2="Madrid"
echo $vlocal1
echo $vlocal2
echo $vglobal

}

vglobal="Roma"
saludo

