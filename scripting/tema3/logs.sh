#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

if [ $# -eq 0 ]; then
    echo "Uso: $0 <tamaño en MB>"
    exit 1
fi

directorio=/var/log
limite=$1

for archivo in $directorio/*.log; do
    tam=$(du -m $archivo | cut -f 1)
    if [ $tam -gt $limite ]; then
        gzip $archivo
        echo "Comprimiendo $archivo"
    fi

done
