# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Terraform - Capitulo 029
# ==============================================

info_tf()
{
VER="0.0.0.2"
PRODUCT="tf"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : itf | tfi | info_tf | tf_info               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Establecemos el size del texto deseado para la salida
set_text_length 4
stl_02 20

# Por si usamos parametros info alias ...
# PAR1=$1

# De momento no tenemos funciones

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones de ${PRODUCT}  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

# echo "${green}Funciones:"${black}
# echo "...."
# formateo "tf_pendiente"        "${tf_pendiente_i}" 

echo "${blue}Alias:"${black}
echo "...."

STL_01_LEN=4
STL_02_LEN=37


#---------------- I N I T  ------------------

formateo3 "ti" "$(alias ti)"   "${ti_i}"

#--------------- R E F R E S H ------------------

formateo3 "tfr"  "$(alias tfr)"   "${tfr_i}"

#---------------- P L A N  ------------------

formateo3 "tp" "$(alias tp)"   "${tp_i}"

#---------------- A P P L Y  ------------------

formateo3 "ta"  "$(alias ta)"   "${ta_i}"

formateo3 "tta" "$(alias tta)"   "${tta_i}"

#---------------- S H O W    ------------------

formateo3 "ts"  "$(alias ts)"   "${ts_i}"

#---------------- G R E P    ------------------

formateo3 "tg"  "$(alias tg)"   "${tg_i}"

#--------------- D E S T R O Y ---------------

formateo3 "td"  "$(alias td)"   "${td_i}"

formateo3 "ttd"  "$(alias ttd)"   "${ttd_i}"

#------------- V A L I D A T E  ------------------

formateo3 "tv"  "$(alias tv)"   "${tv_i}"

#------------- W O R K S P A C E  ---------------

formateo3 "tw"   "$(alias tw)"   "${tw_i}"

#------------- S T A T E  ---------------

formateo3 "tt"   "$(alias tt)"   "${tt_i}"

#------------- M A K E    F O R M A T   |   L I N T   ---------------

formateo3 "tff" "$(alias tff)"   "${tff_i}" 

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

