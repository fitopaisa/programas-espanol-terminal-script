#!/bin/bash

# variables color
source estilos/estilos.sh

color
clear

function presentacion {  
clear
echo -n "$negrita" 
echo "---------------------------------------------------"
echo "         Zsh - Ho My Zsh"
echo '---------------------------------------------------'
echo
echo '   ZSH        / shell mas amigable con temas'
echo
echo '   Complementos:'
echo '   Ho My Zsh   / Temas para Zsh'
echo '   git-core    / core de git con autocompletado'
echo '   screenfetch / visualiza en ascii la version del kernel'
echo 
echo '---------------------------------------------------'
echo " ${copy}by fitopaisa@hotmail.com - www.darkmantune.com${normal}"
echo;echo
}

presentacion

###############
# instalación ZSH
#
echo -n "$comenta"
echo "Instalando ZSH"
echo "${normal}${negrita}"
read -p "sudo apt-install zsh "
echo -n "$normal"
sudo apt-get install zsh
echo "$comenta"
echo "Instalado ZSH "
read -p "------------- "

#> instalando git
echo "$comenta"
echo "Instalando git-core"
echo "-------------------"
echo "${normal}"
echo "Para la escritura automática del terminal con la tecla [tab]"
echo -n "${normal}${negrita}"
read -p "sudo apt-install git-core "
echo -n "$normal"
sudo apt-get install git-core
echo -n "$comenta"
echo
echo "Instalado git "
read -p "-------------- "

#> instalando oh-My-Zsh
echo "$comenta"
echo "Instalando oh my zsh"
echo "${normal}"
echo "Con el comando sh -c ejecutamos el script de instalación de oh my-zsh"
echo "${normal}${negrita}"
read -p 'sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" '
echo -n "$normal"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo
echo "Con el comando chsh -s Configuramos por defecto que abra el sheel zsh"
echo "${normal}${negrita}"
read -p "sudo chsh -s /usr/bin/zsh "
sudo chsh -s /usr/bin/zsh
echo "$comenta"
echo "Instalado oh my zsh"
read -p "------------------- "

#> Instalando screenfetch
echo "$comenta"
echo "Instalando screenfetch"
echo "$normal"
echo '   texto ascii con tu versión de kernel'
echo "visualiza en color en ascii de la versión del kernel"
echo "${normal}${negrita}"
read -p 'sudo apt-get install screenfetch '
echo -n "${normal}"
sudo apt-get install screenfetch
echo -n "$comenta"
echo
echo "Instalado screenfetch"
read -p "--------------------- "

#> configurando inicio screenfetch
echo "$comenta"
echo "         configurando inicio de .zshrc"
echo '---------------------------------------------------'
echo
echo "${normal}${negrita}${verdeLuz}"
echo 'Añadimos en el fichero .zshrc para que'
echo 'nos muestre screenfetch cada vez que abramos una terminal.'
#> linea 1
echo "${normal}${negrita}"
read -p 'sudo echo "" >> ~/.zshrc '
echo -n "${normal}"
sudo echo "" >> ~/.zshrc
#> linea 2
echo -n "${normal}${negrita}"
read -p 'sudo echo "# Linea screenfecth al abrir el terminal" >> ~/.zshrc '
echo -n "${normal}"
sudo echo "# Linea screenfecth al abrir el terminal" >> ~/.zshrc 
#> linea 3
echo -n "${normal}${negrita}"
read -p 'sudo echo "echo" >> ~/.zshrc ' h
echo -n "${normal}"
sudo echo "echo" >> ~/.zshrc
#> linea 4
echo -n "${normal}${negrita}"
read -p 'sudo echo "/usr/bin/screenfetch " >> ~/.zshrc '
echo -n "${normal}"
sudo echo "/usr/bin/screenfetch" >> ~/.zshrc
echo 
/usr/bin/screenfetch 

echo -n "$comenta"
echo "Disfruta de zsh, git y screenfetch"
read -p "para comprobar que todo fue bien abrir una terminal."
footer





