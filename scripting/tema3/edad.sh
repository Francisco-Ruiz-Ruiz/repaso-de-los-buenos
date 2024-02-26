#!/bin/bash

# Función para imprimir el mensaje de uso
  echo "Uso: $0 <día> <mes> <año>"

# Comprobar si se proporcionaron exactamente 3 argumentos
if [ "$#" -ne 3 ]; then
  echo "Error: Se requieren tres argumentos."
  exit 1
fi

# Obtener los valores de los argumentos
dia=$1
mes=$2
ano=$3

# Comprobar si los argumentos son números
if ! [[ "$dia" =~ ^[0-9]+$ && "$mes" =~ ^[0-9]+$ && "$ano" =~ ^[0-9]+$ ]]; then
  echo "Error: Todos los argumentos deben ser números."
  exit 1
fi

# Obtener la fecha actual en formato AAAAMMDD
fecha_actual=$(date "+%Y%m%d")

# Obtener la fecha de nacimiento en formato AAAAMMDD
fecha_nacimiento=$(printf "%04d%02d%02d" $ano $mes $dia)

# Calcular la edad
edad=$(expr \( $fecha_actual - $fecha_nacimiento \) / 10000)

# Imprimir la edad
echo "La edad es: $edad años."
