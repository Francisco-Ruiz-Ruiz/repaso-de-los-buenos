#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

encontrar_mayor() {
    local mayor=${numeros[0]}
    for num in "${numeros[@]}"; do
        if ((num > mayor)); then
            mayor=$num
        fi
    done
    echo $mayor
}

encontrar_menor() {
    local menor=${numeros[0]}
    for num in "${numeros[@]}"; do
        if ((num < menor)); then
            menor=$num
        fi
    done
    echo $menor
}

# Ejemplo de uso del script
numeros=(5 2 8 1 10 3 6)

# Llamadas a las funciones
mayor=$(encontrar_mayor)
menor=$(encontrar_menor)

# Mostrar los resultados
echo "El mayor número en el array es: $mayor"
echo "El menor número en el array es: $menor"
