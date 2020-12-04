#!/bin/bash

# Código que muestra el uso de "if" y los parámetros
# ./parametros_uso_if.sh <parametro> 

echo "Nombre del script:" $0

if [ $# -eq 0 ]; then
  echo "Te faltó indicar el parámetro de entrada"

elif [ $# -eq 1 ]; then
  echo "El valor del argumento que ingresaste fue:" $1

elif [ $# -gt 1 ]; then
  echo "Ingresaste $# argumentos"

fi
