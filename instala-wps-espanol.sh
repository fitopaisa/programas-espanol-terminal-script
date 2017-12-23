#!/bin/bash

# variables color
source estilos/estilos.sh

color
clear

function presentacion {  
echo -n "$negrita" #-n es para que no haga retorno de carro
echo "---------------------------------------------------"
echo "         Wps - office para Linux"
echo '---------------------------------------------------'
echo
echo '   Paquete de offices para Linux wps'
echo 
echo '---------------------------------------------------'
echo " ${copy}by fitopaisa@hotmail.com - www.darkmantune.com${normal}"
echo;echo
}

presentacion


###############
# instalación Libre offices
#
echo "${normal}${negrita}${verdeLuz}"
echo 'Instalando Libre offices para linux - versión Alpha21[2017-06-15]'
echo -n "$comenta"
echo "EL paquete offices libre mejorado."
echo -n "$normal"
echo "La versión que instalaremos Alpha21[2017-06-15]"
echo
echo "Entra en la web de la comunidad de linux para comprobar si hay alguna nueva versión"
echo "http://wps-community.org/downloads"
#> abre Firefox 
echo "${normal}${negrita}"
read -p "sudo firefox http://wps-community.org/downloads "
echo -n "${normal}"
firefox http://wps-community.org/downloads
echo 

#> descarga paquetes Deb
echo "En mi caso descargo la versión amd64Bit de debian."
echo "Si tienes una distro distinta de debian reemplaza el fichero por el que corresponda."
echo "$comenta"
echo "Fichero: wps-office_10.1.0.5707~a21_amd64.deb"
echo "[versión para Debian y derivados en amd y 64bits]"
echo "${normal}${negrita}"
read -p "wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb"
echo "${normal}"
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
echo
echo "Si tienes ubuntu versión 17.10 necesitaras esta librería anterior libpng12-0_1.2.54-1ubuntu1_amd64.deb"
echo "Si tienes una versión anterior de 17.10 de ubuntu no la necesitas. Sáltate este paso."

#> descarga librerías
echo "$comenta"
echo "Descarga librerías necesarias"
echo "$normal"
echo "Librería anterior para Ubuntu 17.10"
echo "descargamos en https://packages.ubuntu.com/xenial/amd64/libpng12-0/download"
echo
echo "${normal}${negrita}"
read -p "http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb "
echo "${normal}"
wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb 
echo 

#> Instalando Paquetes Deb
echo "$comenta"
echo "Instalando ficheros .deb"
echo
echo "${normal}"
echo "dpkg para los paquetes deb. -i para instalar y el nombre del fichero.deb"
echo 
echo "${normal}${negrita}"
read -p "sudo dpkg -i libpng12-0*"
sudo dpkg -i libpng12-0*

#> Instalando programa
echo "$comenta"
echo "Instalando wps-offices"
echo
echo "${normal}${negrita}"
read -p "sudo dpkg -i wps-office* "
echo "${normal}"
sudo dpkg -i wps-office*

#> Instalando programa
#> Descargando Zip
echo "$comenta"
echo "Descargando diccionario Español"
echo
echo "${normal}${negrita}"
read -p "wget http://wps-community.org/download/dicts/es_ES.zip "
echo "${normal}"
wget http://wps-community.org/download/dicts/es_ES.zip
#> Descomprimiendo Zip
echo "$comenta"
echo "Descomprimiendo archivo zip"
echo
echo "${normal}${negrita}"
read -p "unzip es_ES.zip "
echo "${normal}"
unzip es_ES.zip
#> Copiamos fuentes
echo "$comenta"
echo "Movemos el diccionario español en la carpeta de dicts"
echo
echo "${normal}${negrita}"
read -p "mv es_ES ~/.kingsoft/office6/dicts "
echo "${normal}"
mv es_ES ~/.kingsoft/office6/dicts

#> descarga fuentes
echo "$comenta"
echo "Descargando fuentes"
echo
echo "$normal"
echo "instalamos las fuentes que usa windows para mayor compatibilidad "
echo
echo "$comenta"
echo "Descargando fuentes con wget"
echo "${normal}${negrita}"
read -p "wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb "
echo "${normal}"
wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
echo

#> Instalamos fuentes
echo "$comenta"
echo "Instalando fuentes"
echo
echo "$normal"
echo "Instalando fuentes .deb con pkg -i "
echo
echo "${normal}${negrita}"
read -p "sudo dpkg -i wps-office-fonts_1.0_all.deb "
echo "${normal}"
sudo dpkg -i wps-office-fonts_1.0_all.deb
echo


#> Instalamos fuentes símbolos
echo "$comenta"
echo "Instalando fuentes de símbolos"
echo
echo "$normal"
echo "Símbolos requeridos por wps-offices para mostrar fórmulas matemáticas. "
echo
echo "Cambiamos permisos del fichero instala fuentes para ejecución"
echo "${normal}${negrita}"
read -p "chmod 775 ttf-wps-fonts-master/instala-fuentes.sh "
echo "${normal}"
chmod 775 ttf-wps-fonts-master/instala-fuentes.sh
echo
echo "$normal"
echo "Ejecutamos el script de instalacion de las fuentes. "
echo
echo "${normal}${negrita}"
read -p "sudo bash ttf-wps-fonts-master/instala-fuentes.sh "
sudo bash ttf-wps-fonts-master/instala-fuentes.sh
echo "$normal"


echo "$comenta"
echo "Borramos los ficheros .deb y zip de instalacion"
echo "$normal"
echo "El paquete .deb ya nos hace falta lo borramos con rm [fichero]"
echo "${normal}${negrita}"
read -p "rm wps-office* libpng12-0* es_ES.zip "
echo "$normal"
rm wps-office* libpng12-0* es_ES.zip
echo
echo "$comenta"
echo "Para poner el idioma en Español o cualquier otro idioma"
echo "$normal"
echo "Abrimos el programa"
echo "Ya arranca pero esta en ingles."
echo
echo "Arriba a la derecha veremos un icono con una letra A [Switch Language]"
echo "Elegimos español reiniciar el programa para que haga efecto y listo"

echo "$comenta"
echo "Ya tenemos wps en español y con el diccionario en español"
echo "${normal}"
echo "Actualizamos el repositorio apt-get"
echo "${normal}${negrita}"
read -p "sudo apt-get update "
echo "${normal}"
sudo apt-get update
echo "${normal}${negrita}"
read -p "sudo apt-get upgrade "
echo "${normal}"
sudo apt-get upgrade 

echo
echo "De esta manera se actualizada paquete libpng16-12"
echo "a libpng16-16 que si es de Ubuntu 17.10"
echo
read -p "Disfruta de las Offices WPS En Ubuntu 17.10 en español y con diccionario"
echo
echo "Notas:"
echo "Por el paquete que instalamos libpng16-12"
echo "No hay que preocuparse ya que al hacer apt-get update && upgrade"
echo "Se actualiza a la versión libpng16-16 que si es de Ubuntu 17.10"
echo

footer