# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Formateo v3 - Capitulo 029
# ==============================================
# Nota : Se genera formateo3 en el Capitulo 023
# ----------------------------------------------
# Nota le quitamos el guion en el capitulo 027

# Variable externa de getdom_i
formateo3_i="Formatea una salida con tres parametros"

formateo3()
{
VER="0.0.0.3"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${formateo3_i} [${VER}] "
echo "=========================================================="
echo "Format  : formateo3 TEXTO1 TEXTO2 TEXTO3                  "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

T01="$1"
T02="$2"
T03="$3"

if [ "${STL_01_LEN}" == "" ] ; then
STL_01_LEN=20
fi

if [ "${STL_02_LEN}" == "" ] ; then
STL_02_LEN=20
fi

stl_01 ${STL_01_LEN}  ;   stl_02 ${STL_02_LEN}


echo "$(ftl_01 ${T01}) ${orange}$(ftl_02 ${T02}) ${yellow}${T03}"$(textreset)

fi
}

# ----------------------------------------------


#Formateo Inteligente
formateo3i()
{

if [ "${CORTE}" != "" ] ; then
formateo_short "${1}" "${2}" "${3}"
else
formateo3 "${1}" "${2}" "${3}"
fi

}
