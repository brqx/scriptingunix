# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera getdom en el Capitulo 019
# ----------------------------------------------

# Variable externa de getdom_i
getdom_i="Obtiene el dominio de una URL definiendo una variable [$VER]"

getdom()
{
VER="0.0.0.2"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${getdom_i} [${VER}]"
echo "=========================================================="
echo "Format  : getdom [ URL ]                                       "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Acepta que exista una variable URL

URL_PASADA=$1

# En UNIX 0 es que se acepta la condicion
ACTUAR=1

if [ "${URL_PASADA}" == "" ] ; then

# Si no se pasa nada y no hay definida una URL no hacemos nada
if [ "${URL}" != "" ] ; then
# Si hay definida una variable ... actuamos
ACTUAR=0
fi
else
# Si se pasa la URL ... actuamos
ACTUAR=0

fi

#if [ "${ACTUAR}" == "0" ] ; then 
if [ ${ACTUAR} ] ; then 

DOMINIO=$( echo $URL | cut -d "/" -f3 )

echo $DOMINIO
fi

fi
}

# ----------------------------------------------
