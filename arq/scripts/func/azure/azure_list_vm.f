# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de instancias VM - Capitulo 029
#-------------------------------------------------------------------

# alias az2l

az_list_vm()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_list_vm_i} [$VER]						"
echo "=========================================================="
echo "Format  : aw2l | aws_list_ec2 [REGIONS|TAGS TAG_NAME TAG_VALUE]                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INSTANCIAS=$(az vm list -o tsv | tr "\t" " " | tr -s " " | cut -d " " -f16 | tr "\n" " ")

echo ${orange}"Listado de Instancias (IP Zona RG)"$(textreset)
echo "==--==--==--==--==--==--==--==--==--"

STL_01_LEN=12
STL_02_LEN=15

for i in ${INSTANCIAS} ; do
LINE=$(az vm list -o tsv | tr "\t" " " | tr -s " " | grep "$i")

STATUS=$(echo $LINE | cut -d " " -f20 )

LOCATION=$(echo $LINE | cut -d " " -f15 )

RG=$(echo $LINE | cut -d " " -f22 )

IP=$(az vm list-ip-addresses -n ${i} -g ${RG} -o table | egrep "[A-Za-z0-9]"  | grep -v "Public" | tr "\t" " " | tr -s " " | cut -d " " -f2 )

formateo3 "$i" "$STATUS" "${IP} ${LOCATION} ${RG}" 

done


fi
}

