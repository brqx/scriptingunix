# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Funciones para presentar de forma homogenea listados
# ------------------------------------------------------

# Formateo v3_base (ft4 and st4) - Capitulo 029
# ==============================================
# Nota : Se genera formateo4 en el Capitulo 027
# ----------------------------------------------

# format_text_length parametro 4
ftl_04()
{
VER="0.0.0.1"
FEC="2022-Jul"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Formateamos el texto para que tenga la misma longitud en arquitectura Brqx [$VER] [$FEC] "
echo "=========================================================="
echo "Format  : ftl_04 INFO                                     "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INFO="${*}"

INFO_LENGTH=${#INFO}

if [ "${DESIRED_LENGTH_04}" == "" ] ; then
DESIRED_LENGTH_04=20
fi

#
# grulla       -
# escorpion    -
# rinoceronte_africano -

SPACES=$(expr  ${DESIRED_LENGTH_04} - ${INFO_LENGTH} )

if [ $SPACES -gt 0 ] ; then
echo "${INFO}$(printf %${SPACES}s)"
else
echo "${INFO} - [ needed format adjust 04 !! ]"
fi

fi
}

# Set Text Length
stl_04()
{
VER="0.0.0.1"
FEC="2022-Jul"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establecemos la longitud de los textos para formatearlos en arquitectura Brqx [$VER] [$FEC] "
echo "=========================================================="
echo "Format  : stl_04 LEN                                      "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

LEN="$1"

if [ "${LEN}" != "" ] ; then
DESIRED_LENGTH_04=${LEN}
fi

fi
}
