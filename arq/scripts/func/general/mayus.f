# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de tr - Gestion de Mayusculas - Capitulo 029
# ==============================================
# Nota : Se genera mayus en el Capitulo 019
# ----------------------------------------------


mayus_i="Convierte a mayusculas la cadena y define variable"

mayus()
{
VER="0.0.0.1"

##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${mayus_i} [${VER}]"
echo "=========================================================="
echo "Format  : mayus [ TEXTO ]                                       "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Acepta que exista una variable URL

CADENA_PASADA=$1

MAYUS=$( echo "$CADENA_PASADA}" | tr "[a-z]" "[A-Z]" )

fi
}

# ----------------------------------------------
