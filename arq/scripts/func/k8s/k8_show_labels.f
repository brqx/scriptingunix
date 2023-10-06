# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Muestra los labels de un objeto Kubernetes - Capitulo 029
# alias klabels

k8_show_labels()
{
VER="0.0.0.2"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Muestra los labels de un objeto Kubernetes en arquitectura Brqx [$VER]"
echo "=========================================================="
echo "Format  : klabels | k8_show_labels NAME PAR2              "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Example : klabels POD555                                  "
echo "Example : klabels deployment Dep64                        "
echo "=========================================================="

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


k get ${OBJECT} ${NAME} --show-labels

fi
}
