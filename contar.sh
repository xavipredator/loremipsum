#!/bin/bash

# Obtener los nombres de archivo del usuario
echo "Ingrese los nombres de archivo separados por un espacio:"
read filenames

# Convertir la cadena de nombres de archivo en una matriz
IFS=' ' read -ra files <<< "$filenames"

# Iterar sobre la matriz de nombres de archivo y contar las líneas de cada uno
for file in "${files[@]}"
do
    # Verificar que el archivo existe
    if [ -f "$file" ]
    then
        # Contar las líneas del archivo y mostrar el resultado
        lines=$(wc -l < "$file")
        echo "El archivo $file tiene $lines líneas."
    else
        # Mostrar un mensaje de error si el archivo no existe
        echo "El archivo $file no existe."
    fi
done