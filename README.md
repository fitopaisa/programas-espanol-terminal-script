## Wps - office para Linux Español

### Script de instalacion completa de offices para Linux wps en Español
Script by fitopaisa@hotmail.com - www.darkmantune.com

Paquete libre y mejorado.
versión Alpha21[2017-06-15] 

## instalación automática clonando
1. Clona el repositorio
```
git@github.com:fitopaisa/programas-espanol-terminal-script.git
```
2. Ejecuta el script en terminal 
```
./instala-wps-espanol.sh
```



## instalacion manual
En mi caso descargamos amd64.deb
mirar según la distro que tengais y el procesador si es i386.deb o 64
```
firefox http://wps-community.org/downloads
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb

```

Librerias para la version de Ubuntu 17.10
Si tienes una versión anterior de 17.10 de ubuntu no la necesitas.
Se instalaría sola.
descargamos en https://packages.ubuntu.com/xenial/amd64/libpng12-0/download
```
wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb
```


### Instalando ficheros deb
dpkg para los paquetes deb. -i para instalar y el nombre del fichero.deb
```
sudo dpkg -i libpng12-0*
```

### Instala wps-offices
```
sudo dpkg -i wps-office*
```

### Descarga diccionario en Español
lo tenemos enel repositorio pero lo descargaremos de la pagina oficial.
```
wget http://wps-community.org/download/dicts/es_ES.zip 
```

### Descomprimiendo archivo zip y moviendolo a la carpeta del programa
```
unzip es_ES.zip
mv es_ES ~/.kingsoft/office6/dicts
```

## Instalando fuentes 
### instalamos las fuentes offices para mayor compatibilidad
desgardamos el paquete .deb con las fuentes y lo instalamos.
```
wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
sudo dpkg -i wps-office-fonts_1.0_all.deb
```


## Instalamos fuentes símbolos

### Símbolos requeridos por wps-offices para mostrar fórmulas matemáticas. "
### Fuente En ingles:
https://github.com/iamdh4/ttf-wps-fonts
### Traducido y modificado por adolfo andrino sanchez


Cambiamos permisos del fichero instala fuentes para ejecución"
```
read -p "chmod 775 ttf-wps-fonts-master/instala-fuentes.sh "
chmod 775 ttf-wps-fonts-master/instala-fuentes.sh
```
Ejecutamos el script de instalacion de las fuentes.
```
sudo bash ttf-wps-fonts-master/instala-fuentes.sh
```

## borrando ficheros de instalación
Borramos los ficheros .deb y la carpeta /es_ES con el diccionario
El paquete .deb ya nos hace falta lo borramos con rm [fichero]
```
rm wps-office* libpng12-0* es_ES.zip
```

