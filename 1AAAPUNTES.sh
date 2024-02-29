#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

# LO MAS IMPORTANTE, SI ALGO DA ERROR COMPROBAR PARENTESIS
# CORCHETES, LLAVES Y SOBRE TODO ESPACIOS ENTRE LOS IGUALES

# ECHO
# Muy sencillo, esto es un echo
echo "Hola mundo"

# READ
# Con read -p podemos establecer el mensaje mostrado junto
# a la variable que almacenará la respuesta
read -p "Intenta adivinar el numero..." respuesta

# OPERACIONES
c=$(($a+$b))
echo "$a + $b = $c"

# Podemos asignar a variables resultados de comandos
# siguiendo esta sintaxis
ruta=$(pwd)


# IF PARÁMETROS
# Con este if en concreto comprobamos que reciba al menos
# un parametro
if [[ $# -eq 0 ]] ; then
   echo "Debes introducir al menos un parámetro"
   exit 1
fi

# BUCLE FOR
# Esta sería la sintaxis de un bucle for para cada parámetro
# introducido.
for user in "$@"; do
     if grep -q "^$user" "/etc/passwd"
        then
            echo "El usuario $user existe en el sistema"
        else
            echo "El usuario $user no existe en el sistema"
            usuarios+=("$user")
    fi
done    

# Otro bucle FOR
for num in {1..5}; do
  echo $num
done
for num2 in 1 2 3 4 5
do
   echo $num2
done

# ARRAY 
# Así creamos un array vacío
usuarios=()
# así agregamos elementos al array
usuarios+=("$user")
# Y así se accede al contenido de un elemento del array
minimo=${numeros[0]}
maximo=${numeros[0]}

# Con este bucle for accedemos a todos los elementos del
# array "usuarios" llamando a cada uno usuario 
for usuario in "${usuarios[@]}"; do
echo "ejemplo"
done

# CASE
case "$respuesta" in
	1) echo "Has escogido copia de seguridad"
	;;
	2) echo "Has escogido restaurar una copia de seguridad"
	;;
	3) echo "Fin"
	   echo "¡Hasta pronto!"
	   exit 0
	;;
	*) echo "Opcion incorrecta; Exiting..."
	   exit 1
	;;
esac

# FUNCIONES
# En este ejemplo tenemos una funcion llamada mensaje, a la
# cual solo podemos enviar un argumento, ya que sin enviamos
# más o menos dará error. 
function mensaje(){
    if [ $# -eq 0 ]; then
	    echo "Hola Mundo"
    elif [ $# -eq 1 ]; then
	    echo "Hola" $1
    else
	    echo "Demasiados argumentos"
    fi
}
# Mediante estas órdenes podemos llamar a la función.
mensaje
mensaje Cordoba
mensaje Madrid
mensaje sri lanka

# Generación de número aleatorio
min=$1
max=$2
numero=$(($min + RANDOM% ($max - $min + 1 )))

# BUCLE WHILE
while [ $respuesta -ne $numero ] ; do
	echo "Fallaste, intentalo de nuevo"
	read -p "Intenta adivinar el numero..." respuesta
	counter=$((counter+1))
	if [ $respuesta -gt $numero ]; then
		echo "Es menor"
	elif [ $respuesta -lt $numero ]; then
		echo "Es mayor"
	fi
done

# Saltos de línea en un echo
echo $'La mujer rana \ny el hombre rana \nse casaron \ny en vez de tener perdices \ntuvieron tres renacuajos'





