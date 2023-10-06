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
formateo_short_i="Formatea una salida con tres parametros"

formateo_short()
{
VER="0.0.0.3"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${formateo_short_i} [${VER}] "
echo "=========================================================="
echo "Format  : formateo_short TEXTO1 TEXTO2 TEXTO3                  "
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

if [ "${CORTE}" == "" ] ; then
CORTE=25
fi

#
stl_01 ${STL_01_LEN}  ;   stl_02 ${STL_02_LEN}


echo "$(ftl_short ${T01}) ${orange}$(ftl_short ${T02}) ${yellow} $(ftl_short ${T03} )"$(textreset)

fi
}

# ----------------------------------------------
