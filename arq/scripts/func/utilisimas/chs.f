# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de paths - Capitulo 029
# ==============================================
# Nota : Se genera chs en el Capitulo 029
# ----------------------------------------------

# Variable externa de chs_i
chs_i="Intercambia una parte de la ruta actual por otra en ultimo nivel (short)"

chs()
{
VER="0.0.0.2"
chs_u="chs cadena1 cadena2"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo3 "${chs_i}" "${chs_u}" "${VER}"

else
# Cambio especial solo de un nivel

ACTUAL="${1}"
CAMBIO="${2}"

if [ "${CAMBIO}" == "" ] ;  then
CAMBIO="${ACTUAL}"
ACTUAL="$(basename $PWD)"
fi

if [ "${ACTUAL}" != "" -a "${CAMBIO}" != "" ] ;  then

DESTINO="$(dirname $PWD)/${CAMBIO}"

stat "${DESTINO}" &> /dev/null
SALIDA_stat=$?

if [ "${SALIDA_stat}" == "0" ] ; then
cd "${DESTINO}" 2> /dev/null
fi

fi

fi
}

# ----------------------------------------------

