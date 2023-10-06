# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de kubernetes - Capitulo 029
# ==============================================

k8_apply_envsubst_i="Aplica manifiesto de Kubernetes substituyendo variables en arquitectura Brqx"
# Ejecuta apply con envsubst
# alias kae

k8_apply_envsubst()
{
VER="0.0.0.1"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo " ${k8_apply_envsubst_i} [$VER]"
echo "=========================================================="
echo "Format  : kae | k8_apply_envsubst FILE_YAML               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else


# Hooks para kubernetes
# __k

archivo=$1

envsubst < $archivo | k apply -f -


fi
}
