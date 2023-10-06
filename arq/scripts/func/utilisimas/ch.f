# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de paths - Capitulo 029
# ==============================================
# Nota : Se genera ch en el Capitulo 029
# ----------------------------------------------

# Variable externa de ch_i
ch_i="Intercambia una parte de la ruta actual por otra"

ch()
{
VER="0.0.0.2"
ch_u="ch cadena1 cadena2 | ch cadena2"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo3 "${ch_i}" "${ch_u}" "${VER}"

else
# Dos modos de funcionamiento
# ch cadena --Çambia la ruta actual por la cadena

ACTUAL="${1}"
CAMBIO="${2}"


if [ "${CAMBIO}" == "" ] ;  then
CAMBIO="${ACTUAL}"
ACTUAL="$(basename $PWD)"
fi

if [ "${ACTUAL}" != "" -a "${CAMBIO}" != "" ] ;  then

RUTA_ACTUAL="${PWD}"

# echo "Antes de cambiar ${RUTA_ACTUAL}  ${ACTUAL} ${CAMBIO}"
DESTINO=$(echo ${RUTA_ACTUAL} | sed "s/${ACTUAL}/${CAMBIO}/g")

stat "${DESTINO}" &> /dev/null
SALIDA_stat=$?

if [ "${SALIDA_stat}" == "0" ] ; then
cd "${DESTINO}" 2> /dev/null
fi

fi

fi
}

# ----------------------------------------------

