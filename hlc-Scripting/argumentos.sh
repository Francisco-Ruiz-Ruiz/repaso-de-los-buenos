#!/bin/bash

# Script:    argumentos
# Descripción:   argumentos
# Autor:    Javier Lucena Tienda
# Fecha:    30/11/2023

if [[ $# -ne 1 ]] ; then
echo "Numero de argumentos incorrecto"
echo "Uso: $0 nombre_usuario"
exit 1
fi

if grep -q "^$1:" /etc/passwd
  then
    echo "El usuario $1 existe en el sistema"
  else
    echo "El usuario no existe en el sistema"
fi
exit 0

