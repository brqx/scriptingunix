# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Gestion de colores - Capitulo 029
# ==============================================
# Nota : Se genera colores en el Capitulo 018 - Parte 02
# Nota : Se actualiza en Capitulo 021
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


red="$(      tput setaf 1)"
green="$(    tput setaf 2)" 
yellow="$(   tput setaf 3)" 
blue="$(     tput setaf 4)" 
magent="$(   tput setaf 5)" 
cyan="$(     tput setaf 6)" 
white="$(    tput setaf 7)" 
black="$(    tput setaf 0)" 

orange="$(   tput setaf 208)"
purple=$(    tput setaf 135);

# ----------------------------------------------

#Funcion de ajuste negro
textreset(){    
  echo -n "$black" 
}

# ----------------------------------------------

#Funcion de ejemplo
formateo_ejemplo()
{
echo "${green} $1 (en verde) - ${blue} $2 (en rojo) "$(textreset)
}

# ----------------------------------------------

#Funcion de formateo v2
formateo()
{
TEXT=$1
WHAT=$2
echo "$(format_text_length ${TEXT})  - ${yellow}${WHAT}"$(textreset)
}

# ----------------------------------------------

