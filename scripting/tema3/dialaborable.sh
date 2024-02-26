#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

dia=$(date +%u)

if [ $dia -gt 5 ]; then
    echo "Es fin de semana"
else
    echo "Es dia laborable"
fi