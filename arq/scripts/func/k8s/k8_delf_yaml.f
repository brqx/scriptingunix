# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de kubernetes - Capitulo 029
# ==============================================

# Ejecuta delete -f de muchos ficheros
# alias de

k8_delf_yaml_i="Ejecuta una orden en muchos archivos yaml Kubernetes en arquitectura Brqx"

k8_delf_yaml()
{
VER="0.0.0.2"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${k8_delf_yaml_i} [$VER]"
echo "=========================================================="
echo "Format  : kdf | k8_delf_yaml NAME NAME NAME ...           "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else


for archivo in $* ; do 
#echo ${archivo}
k delete -f ${archivo}

done


fi
}
