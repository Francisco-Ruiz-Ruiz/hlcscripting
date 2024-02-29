#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

echo "- 1 - Copia de seguridad"
echo "- 2 - Restaurar"
echo "- 3 - Fin"
read respuesta

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
