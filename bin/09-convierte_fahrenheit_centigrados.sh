#!/bin/bash

# Código que muestra como usar funciones leyendo de un archivo con temperaturas en escala Farhenheit para convertirlo a Centígrados tanto en pantalla como en archivo
# ./09-convierte_fahrenheit_centigrados.sh 

farhenheit_to_centigrados () {
   centigrados=$(echo "scale=2;($fahrenheit-32)*(5/9)"|bc)
   echo $centigrados
   $centigrados >> ../input/centigrados.txt
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

   /dev/null > ../input/centigrados.txt

   for temperatura in ${arreglo_temperatura[@]}; do
       farhenheit_to_centigrados $temperatura
   done

  else
      echo "No existe el archivo \"fahrenheit.txt\""
fi
