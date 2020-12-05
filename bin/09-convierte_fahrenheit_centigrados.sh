#!/bin/bash

# Código que muestra como usar funciones leyendo de un archivo con temperaturas en escala Farhenheit para convertirlo a Centígrados tanto en pantalla como en archivo
# ./09-convierte_fahrenheit_centigrados.sh 

if [ ! -d ../output ]; then
  mkdir ../output
fi

if [ ! -e ../output/centigrados.txt ]; then
  touch ../output/centigrados.txt
else
  rm ../output/centigrados.txt
  touch ../output/centigrados.txt
fi

farhenheit_a_centigrados () {
   temperatura_centigrados=$(echo "scale=2;($temperatura_farhenheit - 32) * (5/9)"| bc)
   echo $temperatura_farhenheit grados farhenheit equivalen a $temperatura_centigrados grados centígrados
   echo $temperatura_farhenheit,$temperatura_centigrados >> ../output/centigrados.txt
}

contador=0
arreglo_temperatura=()

if [ -e ../input/fahrenheit.txt ]; then
   echo "Existe el archivo \"fahrenheit.txt\""
   echo ""

   echo "Leyendo el archivo"
   while IFS="" read -r fahrenheit; do
      ((++contador)) && arreglo_temperatura[${#arreglo_temperatura[@]}]=$fahrenheit 
   done < ../input/fahrenheit.txt

   echo ""
   echo "El archivo tiene $contador líneas"
   echo ""

   echo "farhenheit,celsius" > ../output/temperatura.txt

   for temperatura_farhenheit in ${arreglo_temperatura[@]}; do
       farhenheit_a_centigrados $temperatura_farhenheit
   done

  else
      echo "No existe el archivo \"fahrenheit.txt\""
fi
