#!/bin/bash

# Codifica un script que haga lo siguiente:

## Solicita 2 variables a través de la línea de comando

## Imprime alguno de los 3 siguientes mensajes:

### Si el primer número es mayor que el segundo:
### “El primer número <numero_1> es mayor que el segundo número <numero_2>”

### Si el segundo número es mayor que el primero:
### “El segundo número <numero_2> es mayor que el primer número <numero_1>”

### Si ambos números son iguales:
### “Tanto el número <numero_1> como el número <numero_2> son iguales”

printf "numero 1: "; read var1
printf "numero 2: "; read var2; printf "\n"
[[ var1 -gt var2 ]] && echo “El primer número $var1 es mayor que el segundo número $var2”
[[ var2 -gt var1 ]] && echo “El segundo número $var2 es mayor que el primer número $var1”
[[ var1 -eq var2 ]] && echo “Tanto el número $var1 como el número $var2 son iguales”
printf "\n"
if [ $var1 -gt $var2 ]; then echo “El primer número $var1 es mayor que el segundo número $var2”
elif [ $var2 -gt $var1 ]; then echo “El segundo número $var2 es mayor que el primer número $var1”
elif [ $var1 -eq $var2 ]; then echo “Tanto el número $var1 como el número $var2 son iguales”
fi
printf "\n"

