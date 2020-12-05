#!/bin/bash

# Código que muestra como leer archivos para crear directorios 
# ./08-lee_archivo.sh 

contador=0

if [ -e ../input/directorios.txt ]; then
   echo "Existe archivo \"directorios.txt\""
   echo ""

   echo "Leyendo el archivo"
   while IFS="" read -r directorio; do
      ((++contador)) && arreglo_directorios[${#arreglo_directorios[@]}]=$directorio && echo "Leyendo: $directorio"
   done < ../input/directorios.txt

   echo ""
   echo "El archivo tiene $contador líneas"
   echo ""

   if [ -d ../test ]; then
      echo "Ya existe directorio \"test\""
      echo ""

   else
      echo "Creando directorio \"test\""
      echo ""
      mkdir ../test
   fi

   echo "Creando directorios"
   echo ""

   for directorio_a_crear in ${arreglo_directorios[@]}; do
     if [ -d ../test/$directorio_a_crear ]; then

      echo "Ya existe el directorio -- $directorio_a_crear --"

     else
      echo "Creando directorio -- $directorio_a_crear --"
      mkdir ../test/$directorio_a_crear
     fi
   done

   else
      echo "No existe el archivo \"directorios.txt\""
fi
