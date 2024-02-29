#!/bin/bash

# script: script
# descripcion: descripcion
# autor: Francisco Ruiz

if [[ $# -eq 0 ]] ; then
   echo "Debes introducir al menos un parámetro"
   exit 1
fi

usuarios=()

i=0
for user in "$@"; do
     if grep -q "^$user" "/etc/passwd"
        then
            echo "El usuario $user existe en el sistema"
        else
            echo "El usuario $user no existe en el sistema"
            usuarios+=("$user")
    fi
done


for usuario in "${usuarios[@]}"; do
    contra=$(openssl rand -base64 12)
    echo "La contraseña del usuario $usuario es $contra"
    sudo useradd -m -s /bin/bash -p "$(openssl passwd -1 "$contra")" $usuario
done
