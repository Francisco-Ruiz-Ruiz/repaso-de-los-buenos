#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

min=$1
max=$2

num=$(($min + RANDOM % ($max - $min + 1)))


read -p "Inserte el numero que creas que es... " numero
counter=1

while [ $numero -ne $num ] ; do 
    if [ $num -gt $numero ] ; then 
        echo "el numero es mayor"
    elif [ $num -lt $numero ] ; then
        echo "el numero es menor"
    fi
    read -p "Inserta un numero nuevo... " numero
    counter=$((counter+1))
done

echo "Has adivinado el numero en $counter intentos"