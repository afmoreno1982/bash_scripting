#!/bin/bash

# Código que muestra como leer archivos para crear directorios 
# ./08-lee_archivo.sh <directorio>

contador=0
cantidad_parametros=$#
directorio_padre=$1

if [ $cantidad_parametros -eq 0 ]; then
   echo "./08-lee_archivo.sh <directorio>"

elif [ $cantidad_parametros -eq 1 ]; then

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

      if [ -d ../$directorio_padre ]; then
         echo "Ya existe directorio \"$directorio_padre\""
         echo ""

      else
         echo "Creando directorio \"$directorio_padre\""
         echo ""
         mkdir ../$directorio_padre
      fi

      echo "Creando directorios"
      echo ""

      for directorio_a_crear in ${arreglo_directorios[@]}; do
        if [ -d ../$directorio_padre/$directorio_a_crear ]; then
          echo "Ya existe el directorio -- $directorio_a_crear --"

        else
          echo "Creando directorio -- $directorio_a_crear --"
          mkdir ../$directorio_padre/$directorio_a_crear
        fi
      done

      else
         echo "No existe el archivo \"directorios.txt\""

   fi

fi

