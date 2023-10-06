# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de kubernetes - Capitulo 029
# ==============================================
#
# Ejecuta apply -f de muchos ficheros
# alias kaf

k8_applyf_yaml_i="Ejecuta una orden en muchos archivos yaml Kubernetes en arquitectura Brqx"

k8_applyf_yaml()
{
VER="0.0.0.2"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo " ${k8_applyf_yaml_i} [$VER]"
echo "=========================================================="
echo "Format  : kaf | k8_applyf_yaml NAME NAME NAME ...           "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else


for archivo in $* ; do 
#echo ${archivo}
k apply -f ${archivo}

done

fi
}
