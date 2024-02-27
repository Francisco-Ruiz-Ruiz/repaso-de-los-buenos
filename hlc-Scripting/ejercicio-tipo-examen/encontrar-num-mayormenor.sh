#!/bin/bash

array=(5 3 9 1 7)
# Función para encontrar el elemento mayor
function encontrar_mayor() {
    local mayor=${array[0]}
    for elemento in "${array[@]}"; do
        if ((elemento > mayor)); then
            mayor=$elemento
        fi
    done
    echo "El mayor elemento es: $mayor"
}

# Función para encontrar el elemento menor
function encontrar_menor() {
    local menor=${array[0]}
    for elemento in "${array[@]}"; do
        if ((elemento < menor)); then
            menor=$elemento
        fi
    done
    echo "El menor elemento es: $menor"
}
encontrar_mayor
encontrar_menor


