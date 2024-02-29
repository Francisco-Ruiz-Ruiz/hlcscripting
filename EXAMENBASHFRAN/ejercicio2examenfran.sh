#!/bin/bash

# script: script 2 examen
# descripcion: script 2 examen bash
# autor: Francisco Ruiz

ips=("192.168.112.22" "192.168.112.109" "192.168.112.25")

comprueba_ip(){
    if ping -c 1 -W 1 "$ip" &> /dev/null; then
        echo "$(date )___$ip" >> rrf_ip_on
        echo "$ip esta levantada"
    else
        echo "$(date )___$ip" >> rrf_ip_off
        echo "$ip no esta levantada"
    fi
}

for ip in "${ips[@]}"; do
    comprueba_ip "$ip"
done

echo "IPs comprobadas"