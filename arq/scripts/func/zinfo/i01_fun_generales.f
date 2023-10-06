# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Capitulo 029
# ==============================================
# Nota: Formateo3 nace en Capitulo 023


info_gen_i="Informacion Arquitectura - Funciones y Alias generales"

info_gen()
{
# Desactivamos para que coja la version de la arquitectura
#VER="0.0.0.2"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${info_gen_i}"
echo "=========================================================="
echo "Format  : i | info                                       "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Establecemos el size del texto deseado para la salida
set_text_length 12

# Por si usamos parametros info alias ...
# PAR1=$1

# Condicion

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

echo "${green}Funciones:"${black}
echo "...."

formateo "mifuncion_01" "${mifuncion_01_i}" 
formateo "mifuncion_02" "${mifuncion_02_i}" 
formateo "getdom"       "${getdom_i}" 
formateo "mayus"         "${mayus_i}" 

formateo "cambia_fichero" "${cambia_url_i}" 
formateo "cambia_url" "${cambia_url_i}" 

formateo "setCOLOR"  "Establece el color de texto del terminal" 


echo "${blue}Alias:"${black}
echo "...."
formateo3 "cf"  "$(alias cf)" "${cf_i}"

formateo3 "ff"  "$(alias ff)" "${ff_i}"

formateo3 "h"   "$(alias h)"  "${h_i}"

formateo3 "i"   "$(alias ff)" "${i_i}"

formateo3 "A"   "$(alias A)"  "${A_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

