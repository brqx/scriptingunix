# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

# Variable externa de f_i
f_i="Hace una busqueda de archivos por extension"

f()
{
VER="0.0.0.2"
f_u="f extension"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo2 "${f_i}" "${f_u}" "${VER}"

else
EXTENSION=$1 

find . -type f -name "*.${EXTENSION}" 2> /dev/null ;

fi
}

# ----------------------------------------------
