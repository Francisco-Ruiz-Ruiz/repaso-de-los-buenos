#!/bin/bash

#Script: script
#Descripcion: 
#Author: Luis Burgos
#fecha: 00/00/2023

clear
echo "- 1 - Copia de seguridad"
echo "- 2 - Restaurar copia"
echo "- 3 - Fin"
echo "Su eleccion: "
read respuesta

case "$respuesta" in
1) echo "Su eleccion ha sido copia de seguridad"
;;
2) echo "Su eleccion ha sido restaurar"
;;
3) echo "Fin del tratamiento"
echo "Hasta luego"
exit 0
;;
*) echo "Opcion incorrecta"
echo "adios ..."
exit 1
;; 
esac