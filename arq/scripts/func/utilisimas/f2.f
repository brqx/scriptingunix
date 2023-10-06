# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de busqueda - Capitulo 029
# ==============================================
# Nota : Se genera f2 en el Capitulo 029
# ----------------------------------------------

# Variable externa de f2_i
f2_i="Hace una busqueda de archivos por extension"

f2()
{
VER="0.0.0.2"
f2_u="f2 extension filtro"

# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo3 "${f2_i}" "${f2_u}" "${VER}"

else

EXTENSION=$1 
FILTRO=$2    

if [ "${EXTENSION}" != "" -a "${FILTRO}" != "" ] ;  then

f ${EXTENSION} | grep ${FILTRO}   

fi


fi
}

# ----------------------------------------------
