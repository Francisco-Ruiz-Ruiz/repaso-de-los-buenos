#!/bin/bash

# Script:   suma con bucle
# Descripción:   Hola Mundo!
# Autor:    Javier Lucena Tienda
# Fecha:    30/11/2023

total=0
for suma in {1..10}
do
	echo "El numero ahora vale $suma "
	total=$((total + suma))
	echo "Ahora el total es $total"
done
