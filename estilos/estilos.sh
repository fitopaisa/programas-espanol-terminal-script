
function color {   

    negrita=`echo -en "\e[1m"`
    rojo=`echo -en "\e[31m"`
    rojoLuz=`echo -en "\e[91m"`

    verde=`echo -en "\e[32m"`
    verdeLuz=`echo -en "\e[92m"`

    azul=`echo -en "\e[34m"`
    azulLuz=`echo -en "\e[94m"`

    aqua=`echo -en "\e[36m"`
    aquaLuz=`echo -en "\e[96m"`

    amarillo=`echo -en "\e[93m"`

    normal=`echo -en "\e[0m"`
    grisOscruro=`echo -en "\e[90m"` #gris oscuro

    notas=`echo -en "\e[96m"`
    comenta=`echo -en "\e[96m"`
    copy=`echo -en "\e[92m"`
    codigo=`echo -en "\e[90m"` #gris oscuro
}

function footer {

    echo -n "${normal}${negrita}"
    echo '-----------------------------------------------'
    echo '            Script by adolfo andrino'
    echo -n "${copy}"
    echo "fitopaisa@hotmail.com - www.darkmantune.com"
    echo -n "${normal}${negrita}"
    echo "-----------------------------------------------"
    echo "$normal"
}