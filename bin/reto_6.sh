#!/bin/bash

# Código que muestra como filtrar información usando el comando "cut" tomando como argumento un año
# ./10-mlb_equipos.sh <year>

#Reto # 6. El script “reto_6.sh” es copia del script “10-mlb_equipos.sh”, 
#          al cual hay que agregarle un par de líneas para que haga lo siguiente:

# Imprime en pantalla la cantidad de equipos y audiencia total que hubieron en el año que seleccionaste: 
# “En el año <year> hubieron <cantidad_equipos> equipos y la audiencia total a los estadios fue de <total_audiencia> millones de espectadores”

# Nota 1: el valor de <total_audiencia> divídelo por 1000000 (un millón) y redondea el número a 2 decimales.
# Nota 2: a partir de 1892 es que aparece el registro de espectadores por equipo.

arreglo_mlb_equipo=()
arreglo_mlb_audiencia=()
size=0

if [ ! -d ../output ]; then
  mkdir ../output
fi

if [ $# -eq 0 ]; then
   echo "El script se ejecuta de la siguiente manera: ./10-mlb_equipos.sh <year>"

elif [ $# -gt "1" ]; then
   echo "El script sólo necesita un parámetro para ejecutarse"

else
      
   echo "Buscando equipos para el año $1"
   cat ../input/mlb_teams.csv | grep -E "^$1" | cut -d , -f41 > ../output/mlb_equipos_year_$1.txt

   arreglo_mlb_equipo=($(cat ../input/mlb_teams.csv | grep -E "^$1" | cut -d , -f3))
   arreglo_mlb_audiencia=($(cat ../input/mlb_teams.csv | grep -E "^$1" | cut -d , -f43))

   size=${#arreglo_mlb_equipo[@]}

   echo "ID_equipo,audiencia" > ../output/mlb_audiencia_year_$1.txt

   for (( i=0; i<$size; i++ )); 
   do 
      echo "${arreglo_mlb_equipo[$i]},${arreglo_mlb_audiencia[$i]}" >> ../output/mlb_audiencia_year_$1.txt
   done

fi

