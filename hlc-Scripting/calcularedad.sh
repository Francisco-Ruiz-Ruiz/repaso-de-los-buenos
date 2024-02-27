#!/bin/bash

# Verificar que se proporcionen tres argumentos
if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <día> <mes> <año>"
    exit 1
fi

# Obtener la fecha actual en formato YYYYMMDD
fecha_actual=$(date +"%Y%m%d")

# Crear la fecha de nacimiento a partir de los argumentos
fecha_nacimiento="$3$2$1"

# Calcular la edad utilizando la herramienta date
edad=$(date -d @$(( ($(date -d "$fecha_actual" +%s) - $(date -d "$fecha_nacimiento" +%s)) / 31536000)) +"%Y" )

# Mostrar la edad
echo "La edad es: $edad años"
