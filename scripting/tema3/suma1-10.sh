#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

for despegue in 4 3 2 1 "Fuego !!"
do
echo "$despegue"
done

suma=0
for num in {1..10}
do
suma=$((suma + num))
done

echo "$suma"