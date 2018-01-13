#!/bin/bash

# variables color
source estilos/estilos.sh

color
clear

function presentacion {  
clear
echo;echo
echo -n "$negrita" #-n es para que no haga retorno de carro
echo "---------------------------------------------------"
echo "         Zsh - Ho My Zsh"
echo '---------------------------------------------------'
echo
echo
echo '   ZSH        / shell mas amigable con temas'
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
echo "${normal}${negrita}"
echo "Instalando ZSH"
echo "-------------------------"
echo "${normal}${negrita}"
read -p "sudo apt-install zsh "
echo -n "$normal"
sudo apt-get install zsh
echo
read -p "Instalado ZSH "
#> instalando git
echo -n "${normal}${negrita}"
echo "Instalando git-core"
echo "-------------------"
echo "${normal}"
echo "Para la escritura automática del terminal con la tecla [tab]"
echo -n "${normal}${negrita}"
read -p "sudo apt-install git-core "
echo -n "$normal"
sudo apt-get install git-core
echo "$normal"
echo
echo "Instalado git "
read -p "--------------"

#> instalando oh-My-Zsh
echo -n "${normal}${negrita}${verdeLuz}"
echo "Instalando oh my zsh"
echo "--------------------"
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
echo -n "$normal"
echo "$negrita"
read -p "Instalado oh my zsh"

#> Instalando screenfetch
echo -n "${normal}${negrita}${verdeLuz}"
echo "---------------------------------------------------"
echo "         Instalando screenfetch"
echo '   texto ascii con tu versión de kernel'
echo '---------------------------------------------------'
echo "${normal}${negrita}"
echo "visualiza en color en ascii de la versión del kernel"
echo "${normal}${negrita}"
read -p 'sudo apt-get install screenfetch '
echo -n "${normal}"
sudo apt-get install screenfetch
echo 

#> configurando inicio screenfetch
echo -n "$negrita"
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
#> linea 1
echo -n "${normal}${negrita}"
read -p 'sudo echo "echo" >> ~/.zshrc ' h
echo -n "${normal}"
sudo echo "echo" >> ~/.zshrc
#> linea 1
echo -n "${normal}${negrita}"
read -p 'sudo echo "/usr/bin/screenfetch " >> ~/.zshrc '
echo -n "${normal}"
sudo echo "/usr/bin/screenfetch" >> ~/.zshrc
echo 
/usr/bin/screenfetch 

echo "$normal"
echo "Disfruta de zsh, git y screenfetch"
read -p "para comprobar que todo fue bien abrir una terminal."
footer





