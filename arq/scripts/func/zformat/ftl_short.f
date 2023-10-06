# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Funciones para presentar de forma homogenea listados
# ------------------------------------------------------

# Formateo Short - Capitulo 027
# ==============================================
# Nota : Se genera formateo_Short en el Capitulo 027
# ----------------------------------------------

#Format Text Length
ftl_short()
{
VER="0.0.0.1"
FEC="2022-Jul"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Formateamos el texto para que tenga la misma longitud en arquitectura Brqx [$VER] [$FEC] "
echo "=========================================================="
echo "Format  : ftl_short INFO                                     "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INFO="${*}"

INFO_LENGTH=${#INFO}

if [ "${DESIRED_LENGTH}" == "" ] ; then
DESIRED_LENGTH=20
fi

#
# grulla       -
# escorpion    -
# rinoceronte_africano -

SPACES=$(expr  ${DESIRED_LENGTH} - ${INFO_LENGTH} )

if [ $SPACES -gt 0 ] ; then
CADENA="${INFO}$(printf %${SPACES}s)"
else
CADENA="${INFO}"
fi

# Ahora acortamos la cadena

echo "${CADENA}" | cut -c1-${CORTE}

fi
}


# ----------------------------------------------

# Set CORTE

stl_short()
{
VER="0.0.0.1"
FEC="2022-Jul"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establecemos el corte para visualizacion acortada [$VER] [$FEC] "
echo "=========================================================="
echo "Format  : stl_short LEN               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else
# Llega stl_short_20

if [ ${CORTE} == "" ] ; then
CORTE=$1
fi

fi
}

# ----------------------------------------------

manage_short()
{
VER="0.0.0.1"
FEC="2022-Jul"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Habilitamos formato corto [$VER] [$FEC] "
echo "=========================================================="
echo "Format  : enable_short CORTE               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Si se pasa el corte, se habilita sino se deshabilita

PAR_CORTE=$1

if [ "${PAR_CORTE}" == "" ] ; then
# Deshabilitado
ENABLED_SHORT=1
CORTE=""
else
#Habilitado
ENABLED_SHORT=0
CORTE=$1
fi

fi
}

# ------------------------------------------------------

