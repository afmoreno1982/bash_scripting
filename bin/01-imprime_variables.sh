#!/bin/bash
# Script que imprime la hora

texto="primer texto en bash"
numero_entero=5
numero_aleatorio=$RANDOM

fecha_actual=`date`
semana=`date +%W`
dia_year=`date +%j`

echo "$fecha_actual, semana del año: $semana, día del año: $dia_year, texto: \"$texto\", número entero: $numero_entero, número aleatorio: $numero_aleatorio."

