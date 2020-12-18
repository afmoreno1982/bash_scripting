#!/bin/bash

# Codifica un script que haga lo siguiente:
# Si no ingresaste los 2 parámetros imprime el mensaje de como se debería correr el script: "./reto_3.sh <palabra> <veces>"
# Si ingresaste los 2 parámetros haz lo siguiente:
#    1. Almacena el primer parámetro en una variable que se llame "palabra"
#    2. Obten el tamaño de la variable "palabra" y almacénalo en una variable que se llame "size"
#    3. Imprime la variable "palabra" tantas veces de acuerdo al valor de la variable "size"
#    4. Suma el valor de la variable "size" con el segundo parámetro y almacénalo en una variable que se llame "total"
#    5. Imprime la variable de ambiente $USER tantas veces como el valor de la variable "total"

[[ ! $# -eq 2 ]] && { printf "$0 <palabra> <veces> \n"; exit 1; }

[[ $# -eq 2 ]] && {

  palabra=$1
  size=$( printf $palabra | wc -m )
  printf "Tamaño: $size \nPalabra: $palabra \n# de argumentos: $# \n\n"

  for i in $( seq 1 $size ); do
  printf "$i - $palabra\n"
  done; printf "\n"

  total=$(($size + $2))

  for i in $( seq 1 $total ); do
  printf "$i - $USER\n"
  done; printf "\n"

}
