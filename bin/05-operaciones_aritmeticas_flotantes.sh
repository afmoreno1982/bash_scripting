#!/bin/bash

# Código que muestra el uso de las variables que se ingresan a través de la línea de comando
# para solicitar 2 valores enteros, los cuales se sumaran, restaran, multiplicaran y dividiran usando la utilería "bc"
# ./operaciones_aritmeticas_flotantes.sh 

echo "Ingresa primer número flotante: "
read num_1
echo "Ingresa segundo número flotante: "
read num_2

suma=$(echo "scale=2;$num_1 + $num_2" |bc)
resta=$(echo "scale=2;$num_1 - $num_2" |bc)
multiplicacion=$(echo "scale=2;$num_1 * $num_2" |bc)
division=$(echo "scale=2;$num_1 / $num_2" |bc)

echo "La suma de $num_1 y $num_2 es $suma"
echo "La resta de $num_1 y $num_2 es $resta"
echo "La multiplicación de $num_1 por $num_2 es $multiplicacion"
echo "La division de $num_1 entre $num_2 es $division"
