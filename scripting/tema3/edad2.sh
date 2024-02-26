#!/bin/bash

# Parámetros de entrada
DIA=$1
MES=$2
ANO=$3

# Fecha actual
DIA_ACTUAL='date +%d'
MES_ACTUAL='date +%m'
ANO_ACTUAL='date +%Y'

# Cálculo de la edad
if [[ "$MES" -lt "$MES_ACTUAL" ]] || [[ "$MES" -eq "$MES_ACTUAL" && "$DIA" -le "$DIA_ACTUAL" ]]
then
    EDAD=$(($ANO_ACTUAL-$ANO))
else
    EDAD=$(($ANO_ACTUAL-$ANO-1))
fi

echo "La edad es: $EDAD años"