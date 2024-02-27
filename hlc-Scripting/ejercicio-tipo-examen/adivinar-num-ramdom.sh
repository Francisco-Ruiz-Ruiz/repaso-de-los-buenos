#!/bin/bash

# Script:    bucles
# Descripción:  adivinar numero ramdom
# Autor:    Javier Lucena Tienda
# Fecha:    22/02/2024

#min=$1
#max=$2
read -p "introduce el numero minimo: " min
read -p "introduce el numero maximo:" max

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

echo "Has adivinado el numero en $counter intentos"