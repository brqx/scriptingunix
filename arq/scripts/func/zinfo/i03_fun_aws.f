# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Aws - Capitulo 029
# ==============================================

info_aws()
{
VER="0.0.0.2"
PRODUCT="aws"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : iaws | awsi | info_aws | aws_info               "
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

STL_01_LEN=6
STL_02_LEN=35


#--------------  A W S   ------------------

formateo3         "awv" "$(alias awv)"  "${awv_i}"

formateo3         "awc" "$(alias awc)"  "${awc_i}"

#--------------  A I M    ------------------

formateo3         "awi" "$(alias awi)" "${awi_i}"

#--------------  E C 2    ------------------

formateo3         "aw2" "$(alias aw2)" "${aw2_i}"

formateo3         "aw2s" "$(alias aw2s)" "${aw2s_i}"

formateo3         "aw2l" "$(alias aw2l)" "${aw2l_i}"

#--------------    S 3    ------------------

formateo3         "aw3"  "$(alias aw3)" "${aw3_i}"

formateo3         "awa3"  "$(alias awa3)" "${awa3_i}"

#-------------- V A U L T ------------------

# Vault List

formateo3         "awva"  "$(alias awva)" "${awva_i}"

formateo3         "awval"  "$(alias awval)" "${awval_i}"

formateo3         "awv"  "$(alias awv)" "${awv_i}"

formateo3         "awvd"  "$(alias awvd)" "${awvd_i}"

formateo3         "awv3"  "$(alias awv3)" "${awv3_i}"

formateo3         "awvu"  "$(alias awvu)" "${awvu_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

