#!/bin/bash

# Código que muestra el uso de "for" imprimiendo una palabra "n" veces
# ./imprime_palabras_n_veces.sh <palabra> <veces> 

cantidad_argumentos=$#
texto=$1
veces=$2

if [ $cantidad_argumentos -eq 0 ]; then
  echo "El script se ejecuta de la siguiente manera: ./imprime_palabras_n_veces.sh <palabra> <veces>"

  elif [ $cantidad_argumentos -gt 0 ]; then

  echo "Ingresaste esta palabra o texto: \"$texto\" para que se imprima $veces veces"
  echo ""

  for i in $(seq 1 $veces); do
      echo "["$i"] -- Imprimiendo en pantalla: $texto"
  done

fi
