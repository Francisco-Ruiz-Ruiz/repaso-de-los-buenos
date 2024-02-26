#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

while true; do
    clear
    echo "-----Menu-----"
    echo "1-Listar archivos"
    echo "2-Mostrar fecha y hora"
    echo "3-Salir"

    read -p "Elige la opcion: " opcion

    case $opcion in
        1)
            echo "Has elegido listar archivos"
            ls
            read -p "Pulsa una tecla para continuar...."
            ;;
        2)
            echo "Has elegido fecha y hora"
            date
            read -p "Pulsa una tecla para continuar...."
            ;;
        3)
            exit
            ;;
        *)
            echo "Opcion invalida"
            ;;
    esac
done