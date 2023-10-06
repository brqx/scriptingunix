# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de sed - Cambio de texto en URL - Capitulo 029
# ==============================================
# Nota : Se genera getdom en el Capitulo 021
# ----------------------------------------------

cambia_url_i="Reemplaza cadenas en una url "

cambia_url()
{
VER="0.0.0.1"

##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" -o "${2}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${cambia_url_i} [$VER]"
echo "=========================================================="
echo "Format  : cambia_url TEXTO_INICIAL TEXTO_CAMBIO [URL]"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Acepta que exista una variable URL

URL_PASADO=$3

ORIGEN=$1
DESTINO=$2

# En UNIX 0 es que se acepta la condicion
ACTUAR=1

if [ "${URL_PASADO}" == "" ] ; then

# Si no se pasa nada y no hay definida una URL no hacemos nada
if [ "${URL}" != "" ] ; then
# Si hay definida una variable ... actuamos
ACTUAR=0
URL_PASADO=${URL}
fi
else
# Si se pasa la URL ... actuamos
ACTUAR=0

fi

#if [ "${ACTUAR}" == "0" ] ; then 
if [ ${ACTUAR} ] ; then 

URL=$( echo ${URL_PASADO} | sed "s;${ORIGEN};${DESTINO};g" )
echo ${URL_PASADO} | sed "s;${ORIGEN};${DESTINO};g"

fi

fi
}

# ----------------------------------------------
