# subsistema de Windows para Linux WSL
## Windows10 con la terminal de linux

### Montando una USB y una Red compartida

#### Mount -t drvfs [Ruta Origen] [Ruta Montaje]
Permite montar en WSL cualquier unidad FAT ExFAT o NTFS
utilizando el sistema de archivos DrvFs

**Crea un directorio para montaje de usb**
``` sh
mkdir /media/usb
```

**Monte la unidad usb**

Montamos la unidad e: de Windows a la ruta /media/usb

suponiendo que la letra e: es el usb en windows en otro caso usa tu letra
``` sh
mount -t drvfs e: /media/usb
```

**Crea directorio para montaje de una red**
```
mkdir /media/compartido
```

**Monta unidad de red**

montamos la ruta de red **\\\server\compartido** de Windows a la ruta **/media/compartido**

suponiendo que la red que tienes es esta, Si es otra pon la ruta correcta.
```
mount -t drvfs ‘\\server\compartido’ /media/compartido
```

Tenemos una unidad de usb montada en **/media/usb** y una unidad de red en **/media/compartido**

Usamos comillas ‘’ para que tome como cadena de texto ignorando los caracteres ‘\’
Todos los archivos tendrán acceso completo 777

No se distinguen mayúsculas o minúsculas

No se admiten enlaces simbólicos
