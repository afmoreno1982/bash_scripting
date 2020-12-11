#!/bin/bash

# Código que muestra el uso de "if" y los parámetros
# ./parametros_uso_if.sh <parametro> 

nombre_script=$0
cantidad_parametros=$#
primer_argumento=$1

echo "Nombre del script: $nombre_script"

if [ $cantidad_parametros -eq 0 ]; then
  echo "Te faltó indicar el parámetro de entrada"

elif [ $cantidad_parametros -eq 1 ]; then
  echo "El valor del argumento que ingresaste fue: $primer_argumento"

elif [ $cantidad_parametros -gt 1 ]; then
  echo "Ingresaste $cantidad_parametros argumentos"

fi
