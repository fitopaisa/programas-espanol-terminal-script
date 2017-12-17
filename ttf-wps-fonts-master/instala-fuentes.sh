#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

if [[ $(id -u) -ne 0 ]] ; then
  echo "Este script requiere privilegios de sudo"
  exit 1
fi

HOME_FONT="$HOME/.fonts"
MOST_DISTROS="/usr/share/fonts"
RHL5="/usr/X11R6/lib/X11/fonts"
RHL6="/usr/X11R6/lib/X11/fonts"

if test -e $MOST_DISTROS ; then
        FONT_PATH=$MOST_DISTROS
elif test -e $RHL5 ; then
        FONT_PATH=$RHL5
elif test -e $RHL6 ; then
        FONT_PATH=$RHL6
else
        FONT_PATH=$HOME_FONT
fi

FONT_PATH=$FONT_PATH"/wps-fonts"

if [ -d "$FONT_PATH" ]; then
  # flush stdin
  while read -r -t 0; do read -r; done 
  read -p "El directorio de fuentes ya existe ¿continuar? [y/N] " -n 1 -r 

  if [[ $REPLY == "" ]]; then
    exit 0
  elif [[ $REPLY =~ ^[Nn]$ ]]; then
    exit 0
  fi
fi

echo -e "\nFonts será instalado en: "$FONT_PATH
read -p "Continuamos la instalación? [Y/n] " -n 1 -r

if [[ $REPLY =~ ^[Nn]$ ]]; then
  exit 0
fi

if [ ! -d "$FONT_PATH" ]; then
  echo "Creando directorio de fuentes..."
  mkdir $FONT_PATH
fi

echo "Instalando fuentes..."
cp *.ttf $FONT_PATH
cp *.TTF $FONT_PATH
echo "Dando permisos de ejecucion..."
chmod 644 $FONT_PATH/*
echo "REcargando cache de fuentes..."
fc-cache -vfs
echo "Instalación Finalizada."

exit 0
