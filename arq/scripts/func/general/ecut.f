# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Formateo v3 - Capitulo 029
# ==============================================
# ----------------------------------------------

ecut_i="Cut Inteligente ( corta por el final )"

# End cut (Corta por el final)
ecut()
{
VER="0.0.0.3"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${ecut_i} [${VER}] "
echo "=========================================================="
echo "Format  : ecut CADENA [CORTE]                             "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else
if [ "${1}" != "" ] ; then
# Caso normal sin pipe
# ----------------------------------------------
CAD=$1
LEN_CORTE=$2

else
# Caso con pipe - Por defecto cogemos uno
# ----------------------------------------------
if [ "${LEN_CORTE}" == "" ] ; then
LEN_CORTE=1
fi

read -t 3 CAD


fi
# Otro formato para el IF

if [ ${#CAD} -gt 1 -a ${#CAD} -ge ${LEN_CORTE} ] ; then
CORTE=${CAD:0:${#CAD}-${LEN_CORTE}}
fi

# Vaciamos la variable para evitar efectos laterales
CAD=""

if [ "${CORTE}" != "" ] ; then
echo  $CORTE
CAD=""  ;  CORTE=""
fi

fi
}

# ----------------------------------------------

set_corte()
{
LEN_CORTE=$1
}


# ----------------------------------------------
