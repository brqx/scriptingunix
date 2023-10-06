# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Cambia Fichero - Capitulo 029
# ==============================================
# Nota : Se genera en el Capitulo 019
# ----------------------------------------------

cambia_fichero_i="Cambia cadenas dentro de un archivo "

cambia_fichero()
{
VER="0.0.0.1"

##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" -o "${2}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${cambia_fichero_i} [$VER]"
echo "=========================================================="
echo "Format  : cambia_fichero TEXTO_INICIAL TEXTO_CAMBIO [FICH FICH2] [OVERWRITE]"
echo "          No adaptado para cambios con barras             "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Acepta que exista una variable FICHERO

FICHERO_PASADO=$3
FICHERO_DESTINO=$4

ORIGEN=$1
DESTINO=$2

# En UNIX 0 es que se acepta la condicion
ACTUAR=1

if [ "${FICHERO_PASADO}" == "" ] ; then

# Si no se pasa nada y no hay definida una URL no hacemos nada
if [ "${FICHERO}" != "" ] ; then
# Si hay definida una variable ... actuamos
ACTUAR=0
fi

else
# Si se pasa la URL ... actuamos
ACTUAR=0

fi

if [ "${ACTUAR}" == "0" ] ; then 

    if [ "${FICHERO_DESTINO}" != "" ] ; then 
    # Aquie hay dos opciones
    # 1-Cambiar el actual (sobrescribir)
    # 2-Grabar el cambio en el destino

    if [ "${FICHERO_DESTINO}" == "CAMBIO" -o  "${FICHERO_DESTINO}" = "OVERWRITE" ] ; then   
        sed -i "s/${ORIGEN}/${DESTINO}/g" ${FICHERO_PASADO}
    else
        cat ${FICHERO_PASADO} | sed "s/${ORIGEN}/${DESTINO}/g" > ${FICHERO_DESTINO}
    fi

    else
    cat ${FICHERO_PASADO} | sed "s/${ORIGEN}/${DESTINO}/g"

    fi

fi


fi
}

# ----------------------------------------------
