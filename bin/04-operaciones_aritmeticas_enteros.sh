#!/bin/bash

# Código que muestra el uso de las variables que se ingresan a través de la línea de comando
# para solicitar 2 valores enteros, los cuales se sumaran, restaran y multiplicaran 
# ./operaciones_aritmeticas_enteros.sh 

echo "Ingresa primer número entero: "
read num_1
echo "Ingresa segundo número entero: "
read num_2

# Esta es una manera para asignar resultados de operaciones aritméticas
suma=$(($num_1 + $num_2))

# Esta es otra manera de asignar resultados de operaciones aritméticas
((resta = num_1 - num_2))

multiplicacion=$(($num_1 * $num_2))

echo "La suma de $num_1 y $num_2 es $suma"
echo "La resta de $num_1 y $num_2 es $resta"
echo "La multiplicación de $num_1 por $num_2 es $multiplicacion"
