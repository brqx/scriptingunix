# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Azure - Capitulo 029
# ==============================================

info_azure()
{
VER="0.0.0.2"
PRODUCT="az"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : iazure | azi | info_azure | az_info | info_az   "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Establecemos el size del texto deseado para la salida
set_text_length 4
stl_02 20

# Por si usamos parametros info alias ...
# PAR1=$1

# De momento no tenemos funciones

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones (Alias) de ${PRODUCT}  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

# echo "${green}Funciones:"${black}
# echo "...."
# formateo "tf_pendiente"        "${tf_pendiente_i}" 

# echo "${blue}Alias:"${black}
# echo "...."

STL_01_LEN=6
STL_02_LEN=35


#--------------  A Z U R E  ----------------

formateo3         "azv" "$(alias azv)"  "${azv_i}"

formateo3         "aza" "$(alias aza)"  "${aza_i}"

#--------------  A I M    ------------------

formateo3         "azi" "$(alias azi)" "${azi_i}"

#--------------   V M     ------------------

formateo3         "az2" "$(alias az2)" "${az2_i}"

formateo3         "az2s" "$(alias az2s)" "${az2s_i}"

formateo3         "az2l" "$(alias az2l)" "${az2l_i}"

formateo3         "az2i" "$(alias az2i)" "${az2i_i}"

#--------------  B L O B  ------------------

formateo3         "az3"  "$(alias az3)" "${az3_i}"

formateo3         "az3ls"  "$(alias az3ls)" "${az3ls_i}"

formateo3         "az3lc"  "$(alias az3lc)" "${az3lc_i}"

formateo3         "az3l"  "$(alias az3l)" "${az3l_i}"

formateo3         "az3c"  "$(alias az3c)" "${az3c_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

