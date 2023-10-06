# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Informacion Cuenta de Google - Capitulo 027
#-------------------------------------------------------------------

# alias dokeys

do_list_ssh_keys()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_ssh_keys_i} [$VER]			    "
echo "=========================================================="
echo "Format  : dokeys | docean_info [extended]                        "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

echo "----------------------------------------------------"
echo ${orange}"Listado de Claves SSH [${VER}]"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

STL_01_LEN=18
STL_02_LEN=15

# Nombres de las cuentas de almacenamiento
for i in  $( doctl compute ssh-key list  | grep -v "FingerPrint" | tr -s " " | tr " " "@" ) ; do

id=$(    echo $i | cut -d '@' -f1 )
nom=$(   echo $i | cut -d '@' -f2 )
finger=$(echo $i | cut -d '@' -f3 | base64 | tr "A" "B" |tr "4" "6" )

formateo3 "${nom}" "${id}" "${finger}"
done

echo "----------------------------------------------------"

fi
}

