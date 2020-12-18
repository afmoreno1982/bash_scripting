#!/bin/bash

# Codifica un script que lea 2 paŕametros de entrada y haga lo siguiente:
# Si no hay parámetros de entrada imprime el mensaje "Te faltaron indicar los parámetros" y sal de programa
# Si solo se ingresa un parámetro de entrada imprime el mensaje "Solo se ingreso un parámetro, falta otro" y sal del programa
# Si ingresas dos parámetros de entrada imprime este mensaje: "Los valores ingresados fueron: <val_param1> y <val_param2>"

if [ $# -eq 0 ]; then echo "Te faltaron indicar los parámetros"; exit 1
elif [ $# -eq 1 ]; then echo "Solo se ingreso un parámetro, falta otro"; exit 1
elif [ $# -eq 2 ]; then echo "Los valores ingresados fueron: $1 y $2"; exit 1
elif [ $# -gt 2 ]; then echo "parameters overflow"; exit 1
fi
