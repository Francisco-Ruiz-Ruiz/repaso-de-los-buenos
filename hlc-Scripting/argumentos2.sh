#!/bin/bash

# Script:    script1
# Descripción:   Hola Mundo!
# Autor:    Javier Lucena Tienda
# Fecha:    28/09/2023

echo "- 1 - Copia de seguridad"
echo "- 2 - Restaurar"
echo "- 3 - Fin"
read respuesta

case $respuesta in
	1) echo  "Has escogido copia de seguridad"
	   ;;
	2) echo "Has seleccionado restaurar"
	   ;;
	3) echo "Fin del tratamiento"
	   echo  "Hasta luego..."
	   exit 0
	   ;;
	*) echo "Opcion incorrecta"
	   echo "Adios..."
	   exit 1
	   ;;

esac
