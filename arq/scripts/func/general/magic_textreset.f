# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Gestion de colores - MAGIC - Capitulo 029
# ==============================================
# Nota : Se genera magic_textreset en el Capitulo 019
# ----------------------------------------------


# red - green - yellow - glue - magent - black
# cyan - white - orange
magic_textreset()
{
echo -n "${textreset_general}"

case ${main_console_color} in

red)
setred
;;
green)
setgreen
;;
yellow)
setyellow
;;
cyan)
setcyan
;;
orange)
setcyan
;;
white)
setwhite
;;
magent)
setmagent
;;
black)
setblack
;;
blue)
setblue
;;
*)
setblack

esac

}
