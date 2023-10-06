# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de kubernetes - Capitulo 029
# ==============================================

k8_desc_yaml_i="Muestra el yaml de un objeto Kubernetes en arquitectura Brqx"

k8_desc_yaml()
{
VER="0.0.0.2"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${k8_desc_yaml_i} [$VER]"
echo "=========================================================="
echo "Format  : kyaml | k8_desc_yaml NAME               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Ejecuta bash en nuestro pod
#kgp pod XXX -o yaml


PAR1=${1}
PAR2=${2}

# Por defecto el objeto es un pod
if [ "${PAR2}" == ""  ] ; then
OBJECT=pod
NAME=${PAR1}
else
OBJECT=${PAR1}
NAME=${PAR2}
fi


k get ${OBJECT} ${NAME} -o yaml

fi
}
