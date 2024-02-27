#!/bin/bash

# Script:    menu1.sh
# Descripción:   menu
# Autor:    Javier Lucena Tienda
# Fecha:    18/01/2024

while true; do

	echo "Ejecute una opcion"
	echo "1. Listar archivos"
	echo "2. Mostrar fecha y hora"
	echo "3. Salir"

	read -p "Elige una opcion " opcion

	case $opcion in
	1)
		echo "Has elejido la opcion de listar archivos"
		ls
		;;
	2)
		echo "Has elejido la opcion de mostrar fecha y hora"
		date
		;;
	3)
		exit
		;;

	*)
		echo "Opcion no valida"
		;;
	esac
	read -n 1 -s -r -p "Pulsa parra continuar"
	clear
done
