# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - gcure - Capitulo 029
# ==============================================

info_google()
{
VER="0.0.0.2"
PRODUCT="google"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : igc | gci | info_gcure | gc_info | info_gc   "
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

STL_01_LEN=8
STL_02_LEN=41


#--------------  G C L O U D ---------------

formateo3i         "gcv" "$(alias gcv)"  "${gcv_i}"

formateo3i         "gca" "$(alias gca)"  "${gca_i}"

#--------------  I N F O  ------------------

formateo3i         "gci" "$(alias gci)" "${gci_i}"

#-------------- C O M P U T E --------------

formateo3i         "gc2" "$(alias gc2)" "${gc2_i}"

formateo3i         "gc2s" "$(alias gc2s)" "${gc2s_i}"

formateo3i         "gc2s1" "$(alias gc2s1)" "${gc2s1_i}"

formateo3i         "gc2log" "$(alias gc2log)" "${gc2log_i}"

formateo3i         "gc2l" "$(alias gc2l)" "${gc2l_i}"

formateo3i         "gcz" "$(alias gcz)" "${gcz_i}"

#-------------- I M A G E S ----------------

formateo3i         "gc2i" "$(alias gc2i)" "${gc2i_i}"

formateo3i         "gc2m" "$(alias gc2m)" "${gc2m_i}"

#alias largo
#formateo3i         "gc2inst" "$(alias gc2inst)" "${gc2inst_i}"

#-------------- B U C K E T S --------------

formateo3i         "gc3"  "$(alias gc3)" "${gc3_i}"

formateo3i         "gc3lb"  "$(alias gc3lb)" "${gc3lb_i}"

formateo3i         "gc3l"  "$(alias gc3l)" "${gc3l_i}"

formateo3i         "gc3c"  "$(alias gc3c)" "${gc3c_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

