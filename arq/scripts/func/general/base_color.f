# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Gestion de colores - Capitulo 029
# ==============================================
# Nota : Se genera base_color en el Capitulo 019
# ----------------------------------------------

# Definicion de colores - Compatibilidad MACOS
#-------------------------------------------------------
# Color       #define       Value       RGB
# black     COLOR_BLACK       0     0, 0, 0
# red       COLOR_RED         1     max,0,0
# green     COLOR_GREEN       2     0,max,0
# yellow    COLOR_YELLOW      3     max,max,0
# blue      COLOR_BLUE        4     0,0,max
# magenta   COLOR_MAGENTA     5     max,0,max
# cyan      COLOR_CYAN        6     0,max,max
# white     COLOR_WHITE       7     max,max,max

# 9	Reset to default color

# \[   - Inicio de secuencia de caracteres no imprimibles

# Colores

textreset_general="$(tput sgr0)" # reset the foreground colour
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

#-------------------------------------------------------

# Vale como primera opcion sin cambiar el texto
textreset(){    
  echo -n "$black" 
}

#-------------------------------------------------------

formateo_ejemplo_color()
{
echo "${green} $1 (en verde) - ${red} $2 (en rojo) "$(textreset)
}

#-------------------------------------------------------


