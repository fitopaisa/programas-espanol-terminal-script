# Zsh con temas Ho My Zsh

### Script de instalación completa zsh - Ho My Zsh
Script by fitopaisa@hotmail.com - www.darkmantune.com

Complementos 
- Temas de Ho My Zsh
- Git 
- screenfetch

Terminal shell zsh 
Completamente compatible con bash 
autocompletado magnifico 
Junto con los temas de Ho My Zsh hacen una terminal muy potente he intuitiva. 

## [Guía paso a paso en Youtube](https://www.youtube.com/watch?v=cslxODhqbg8&feature=youtu.be)

## instalación automática (clonando)
**1. Clona el repositorio**
```
git clone git@github.com:fitopaisa/programas-espanol-terminal-script.git
```
**2. Ejecuta el script en terminal**
```
./instala-zsh-myzsh-git-screenfetch.sh
```

## instalación manual
### instalamos zsh
```
sudo apt-get install zsh
```

### instalando git-core 
Para la escritura automática del terminal con la tecla [tab]
```
sudo apt-get install git-core
```

### instalando oh-My-Zsh
Con el comando sh -c ejecutamos el script de instalación de oh my-zsh
```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

### configurando consola por defecto ZSH
Con el comando chsh -s Configuramos por defecto que abra el sheel zsh
sudo chsh -s /usr/bin/zsh


### Instalando screenfetch
visualiza en color en ascii de la versión del kernel
```
sudo apt-get install screenfetch
```

### configurando inicio de .zshrc - screenfetch
Añadimos en el fichero .zshrc para que 
nos muestre screenfetch cada vez que abramos una terminal.
```
sudo echo "" >> ~/.zshrc
sudo echo "# Linea screenfecth al abrir el terminal" >> ~/.zshrc
sudo echo "echo" >> ~/.zshrc
sudo echo "/usr/bin/screenfetch" >> ~/.zshrc
```
**Ya está todo instalado.**

**Disfruta de zsh con git y screenfetch**

para comprobar que todo fue bien abrir una terminal.

