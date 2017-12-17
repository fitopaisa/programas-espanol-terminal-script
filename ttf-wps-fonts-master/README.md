# WPS Office Fonts

Estas son las fuentes de símbolos requeridas por wps-office.
Se usan para mostrar fórmulas matemáticas. 
Recolipacion de las fuentes para facilitar las cosas.


## Instalacion Usnado el Script en Español

Fuente del repositorio Git 
```
git clone https://github.com/iamdh4/ttf-wps-fonts.git
```

Entrar en el directorio
```
cd ttf-wps-fonts
```

ejecutar el script
```
sudo bash install.sh
```

Clean up the `tmp` directory.
```
rm -rf /tmp/ttf-wps-fonts
```




## Installacion manual en ingles.

Clone the Git repository.
```
git clone https://github.com/iamdh4/ttf-wps-fonts.git
```

Create a sub directory in your system's fonts directory. This is usually `/usr/share/fonts`, otherwise consult your distribution's documentation.
```
sudo mkdir /usr/share/fonts/wps-fonts
```

Move fonts to the new directory.
```
sudo mv ttf-wps-fonts/* /usr/share/fonts/wps-fonts
```

Fix the file permissions.
```
sudo chmod 644 /usr/share/fonts/wps-fonts/*
```
Rebuild the font cache.
```
sudo fc-cache -vfs
```

Clean up the `tmp` directory.
```
rm -rf /tmp/ttf-wps-fonts
```





