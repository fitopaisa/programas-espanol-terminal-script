#!/bin/bash

# variables color
source estilos/estilos.sh

color

function presentacion {    
    echo -n "${negrita}${notas}" #-n es para que no haga retorno de carro
    echo "---------------------------------------------------"
    echo "           Blender 2,79 - APP"
    echo '---------------------------------------------------'
    echo
    echo '             3D: modelado3d'
    echo
    echo 'rigging, animación, simulación, renderizado'
    echo 'composición y seguimiento de movimiento'
    echo 'incluso edición de video y creación de juegos.'
    echo 
    echo 'Soporte OpenCL Mejorado '
    echo '-10 ~ 20% de rendimiento más rápido para las CPU modernas x86_64 con AVX2'
    echo '-soporte automático de DPI para determinar las pantallas HiDPI'
    echo '-revisión del soporte de salida de video de Blender'
    echo '-Nuevo eliminador de ruido, sombreador PBR, '
    echo '     receptor de sombra, gestión de color fílmico'
    echo
    echo '-Más de 700 correcciones de errores  '
    echo '---------------------------------------------------'
    read -p " ${copy}by fitopaisa@hotmail.com - www.darkmantune.com${normal} "        
}

clear
presentacion


#>informacion de la ultima versión
echo "${normal}${negrita}${verdeLuz}"
echo 'Blender - Modelado 3d'
echo -n "$comenta"
echo "Actualizado a la ultima versión del repositorio de thomas"
echo "Entramos en la web  para comprobar si hay alguna nueva version"
echo "${normal}${negrita}"
read -p "firefox https://www.blender.org "
echo -n "${normal}"
firefox https://www.blender.org


echo 
#> Contrastando version del repositorio thomas para blender
echo -n "$comenta"
echo "Añadiremos el repositorio de thomas"
echo "Esta mas actualizado que el apt de ubuntu Ubuntu"
echo
echo "${normal}${negrita}"
read -p "Contrastamos la version del repositorio con la web oficial blender"
echo -n "${normal}"
read -p "firefox https://launchpad.net/~thomas-schiex/+archive/ubuntu/blender"
echo 
firefox https://launchpad.net/~thomas-schiex/+archive/ubuntu/blender

#> Añadiendo repositorio PPA
echo -n "$comenta"
echo "añadimos el repositorios de thomas "
echo
echo "${normal}${negrita}"
read -p "sudo add-apt-repository ppa:thomas-schiex/blender "
echo -n "${normal}"
sudo add-apt-repository ppa:thomas-schiex/blender
echo 

#> Actualizamos repositorio
echo -n "$comenta"
echo "Actualizamos repositorio "
echo
echo "${normal}${negrita}"
read -p "sudo apt-get update "
echo -n "${normal}"
sudo apt-get update
echo 

#> Instalando blender
echo -n "$comenta"
echo "Instalando blender "
echo
echo "${normal}${negrita}"
read -p "sudo apt-get install blender "
echo -n "${normal}"
sudo apt-get install blender
echo 


read -p 'Disfruta Blender '

footer
