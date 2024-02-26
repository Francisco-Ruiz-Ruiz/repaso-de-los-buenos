#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

declare -i numero1
declare -i numero2
declare -i numero3
clear
echo "Escribe el primer numero:"
read numero1
echo "Escribe el segundo numero numero:"
read numero2
numero3=$((numero1+numero2))
echo "La suma de $numero1 y $numero2 es: $numero3"  