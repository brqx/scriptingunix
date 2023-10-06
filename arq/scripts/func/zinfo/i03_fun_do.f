# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - doure - Capitulo 029
# ==============================================

info_do()
{
VER="0.0.0.3"
PRODUCT="do"
PRODUCT_NAME="Digital Ocean"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT_NAME} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : ido | doi | info_doure | do_info | info_do   "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones (Alias) de ${PRODUCT_NAME}  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

# echo "${green}Funciones:"${black}
# echo "...."
# formateo "tf_pendiente"        "${tf_pendiente_i}" 

# echo "${blue}Alias:"${black}
# echo "...."

STL_01_LEN=7
STL_02_LEN=44


#--------------  D I G I T A L -------------

formateo3         "dov" "$(alias dov)"  "${dov_i}"

#--------------  I N F O  ------------------

formateo3         "doai" "$(alias doai)" "${doai_i}"

#-------------- C O M P U T E --------------

formateo3         "dokeys" "$(alias dokeys)" "${dokeys_i}"

formateo3         "do2s" "$(alias do2s)" "${do2s_i}"

formateo3         "do2l" "$(alias do2l)" "${do2l_i}"

formateo3         "dor" "$(alias dor)" "${dor_i}"

formateo3         "dori" "$(alias dori)" "${dori_i}"

#-------------- I M A G E S ----------------

formateo3         "do2id" "$(alias do2id)" "${do2id_i}"

formateo3         "do2ia" "$(alias do2ia)" "${do2ia_i}"

formateo3         "do2iu" "$(alias do2iu)" "${do2iu_i}"


#-------------- B U C K E T S --------------

formateo3         "do3lb"  "$(alias do3lb)" "${do3lb_i}"

formateo3         "do3l"  "$(alias do3l)" "${do3l_i}"

formateo3         "do3c"  "$(alias do3c)" "${do3c_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

