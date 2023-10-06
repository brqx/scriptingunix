# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Utilisimas - Capitulo 029
# ==============================================

info_utilisimas()
{
# Desactivamos para que coja la version de la arquitectura
VER="0.0.0.1"
PRODUCT="utilisimas"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : iu | ui | info_utilisimas | utilisimas_info               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Establecemos el size del texto deseado para la salida
set_text_length 27

# Por si usamos parametros info alias ...
# PAR1=$1

# Condicion

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones de ${PRODUCT}  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

STL_01_LEN=25
STL_02_LEN=30

echo "${green}Funciones:"${black}
echo "...."
formateo2 "cdret"                    "${cdret_i}" 
formateo2 "ch | chs (short)"         "${ch_i}" 
formateo2 "f | f2 | f3 "             "${f_i}" 
formateo2 "g | gq | gnr"             "${g_i}" 
formateo2 "ren | renr | rendr"       "${ren_i}" 
formateo2 "rep | repr"               "${rep_i}" 
formateo2 "ipath | enable ps1 | git" "${ipath_i}" 

echo "${blue}Alias:"${black}
echo "...."

STL_01_LEN=14
STL_02_LEN=46

formateo3 "cdN"   "$(alias cdN)"   "${cdN_i}" 
formateo3 "cd-"   "$(alias cdN2)"   

formateo3 "ipath" "$(alias ipath)" "${ipath_i}"

formateo3 "${ANAGRAMA}/no${ANAGRAMA}" "$(alias ${ANAGRAMA})" "${anagrama_i}"

formateo3 "${INSIGNIA}/no${INSIGNIA}" "$(alias ${INSIGNIA})" "${insignia_i}"

formateo3 "brqz/nobrqz" "$(alias brqz)" "${brqz_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

