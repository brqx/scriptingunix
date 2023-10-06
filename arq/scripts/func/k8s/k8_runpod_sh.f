# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de kubernetes - Capitulo 029
# ==============================================

# Ejecuta pod directamente en el cluster de kubernetes
# alias krpodgen |krgen

k8_runpod_sh_i="Ejecuta un pod directamente con una imagen en Kubernetes en arquitectura Brqx"

k8_runpod_sh()
{
VER="0.0.0.2"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == ""  ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${k8_runpod_sh_i} [$VER]"
echo "=========================================================="
echo "Format  : krgen | k8_runpod_sh podname [imagen] [shell] ...           "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else


podname=$1
imagen=$2
shell=$3

if [ "${imagen}" == "" ] ; then 
imagen="nginx:alpine"
fi

if [ "${shell}" == "" ] ; then 
shell="sh"
fi

# Deprecated version
# k run --rm -it --generator=run-pod/v1 ${podname} --image=${imagen} -- ${shell} 

# Example : kubectl run --image=nginx:alpine myfirstpod -- labels=example=myfirstpod

# Current version
k run --rm -it  --image=${imagen} ${podname} -- ${shell} 


fi
}
