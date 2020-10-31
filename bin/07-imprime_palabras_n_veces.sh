#!/bin/bash

# Código que muestra el uso de "for" imprimiendo una palabra "n" veces
# ./imprime_palabras_n_veces.sh <palabra> <veces> 

if [ $# -eq 0 ]; then
  echo "El script se ejecuta de la siguiente manera: ./imprime_palabras_n_veces.sh <palabra> <veces>"

  elif [ $# -gt 0 ]; then

  echo "Ingresaste esta palabra o texto: \"$1\" para que se imprima $2 veces"
  echo ""

  for i in $(seq 1 $2); do
      echo "["$i"] -- Imprimiendo en pantalla:" $1
  done

fi
