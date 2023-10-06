# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Formateo v3 - Capitulo 029
# ==============================================
# Nota : Se genera formateo3 en el Capitulo 023
# ----------------------------------------------

# Variable externa de getdom_i
formateo4_i="Formatea una salida con tres parametros"

formateo4()
{
VER="0.0.0.3"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${formateo4_i} [${VER}] "
echo "=========================================================="
echo "Format  : formateo4 TEXTO1 TEXTO2 TEXTO3 TEXTO4           "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

T01="$1"
T02="$2"
T03="$3"
T04="$4"

if [ "${STL_01_LEN}" == "" ] ; then
STL_01_LEN=20
fi

if [ "${STL_02_LEN}" == "" ] ; then
STL_02_LEN=20
fi

if [ "${STL_03_LEN}" == "" ] ; then
STL_03_LEN=20
fi

stl_01 ${STL_01_LEN}  ;   stl_02 ${STL_02_LEN}
stl_03 ${STL_03_LEN}

echo "$(ftl_01 ${T01}) ${orange}$(ftl_02 ${T02}) ${blue}$(ftl_03 ${T03}) ${yellow}${T04}"$(textreset)

fi
}

# ----------------------------------------------
