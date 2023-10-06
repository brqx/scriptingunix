# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Formateo2 v3 - Capitulo 029
# ==============================================
# Nota : Se genera formateo2 en el Capitulo 029
# ----------------------------------------------

formateo2_i="Formatea una salida con dos parametros"

formateo2()
{
VER="0.0.0.3"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${formateo2_i} [${VER}] "
echo "=========================================================="
echo "Format  : formateo2 TEXTO1 TEXTO2                   "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

T01="$1"
T02="$2"

if [ "${STL_01_LEN}" == "" ] ; then
STL_01_LEN=20
fi

stl_01 ${STL_01_LEN}  


echo "$(ftl_01 ${T01})  ${yellow}${T02}"$(textreset)

fi
}

