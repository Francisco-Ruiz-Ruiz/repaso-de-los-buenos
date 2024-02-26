#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023
clear
echo "Listado de archivos"
contador=0

for archivo in *; do
    echo $archivo
    let contador++
done

echo "Total de archivos = " $contador
