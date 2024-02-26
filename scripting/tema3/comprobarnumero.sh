#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

echo "inserte un numero"
read numero

if [ $numero -gt 0 ]; then
    echo "es un numero positivo"
elif [ $numero -lt 0 ]; then
    echo "es un numero negativo"
elif [ $numero -eq 0 ]; then
    echo "el numero es igual a 0"
fi
