#!/bin/bash

# comprobando si tengo los últimos archivos de github
echo "Buscar archivos más nuevos online primero"
git pull

cd x86_64
sh update.sh

git add --all .

# Dale un comentario al compromiso si quieres
echo "####################################"
echo "Escribe tu comentario de confirmación!"
echo "####################################"

#read input
input="update"
# Comprometerse con el repositorio local con un mensaje que contiene el texto de confirmación

git commit -m "$input"

# Empuje los archivos locales a github

git push -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"