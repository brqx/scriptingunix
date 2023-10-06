# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de imagenes para VM - Capitulo 029
#-------------------------------------------------------------------

# alias az2i

az_list_images()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_list_images_i} [$VER]				"
echo "=========================================================="
echo "Format  : az2i | az_list_images [PUB] [SKU] [ARQ]         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

az_vm_publisher_set $1

az_vm_sku_set $2

az_vm_arq_set $3

STL_01_LEN=12
STL_02_LEN=15

echo "----------------------------------------------------"
echo ${orange}"       Listado de Imagenes"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo3 ${VM_ARQ} ${VM_SKU} ${VM_PUB}
echo "----------------------------------------------------"


INSTANCIAS=$(az vm image list      \
--publisher ${VM_PUB}              \
--sku ${VM_SKU}                    \
--architecture ${VM_ARQ}  --output table --all | tr -s " " | egrep "[A-Za-z0-9]" | grep -v "Urn"  | cut -d " " -f5 | tr "\n" " ")


if [ "${VM_ENABLE_FAST}" ] ; then

STL_01_LEN=30
STL_02_LEN=65

# SUSE:manager-server-4-3-byos:gen1:2022.11.05
for i in ${INSTANCIAS} ; do

INST=$(    echo $i | cut -d ":" -f2    )

DATE=$(    echo $i | cut -d " " -f4 )

formateo3 "$INST" "${DATE}" 

done


else

STL_01_LEN=32
STL_02_LEN=15


for i in ${INSTANCIAS} ; do
LINE=$(az vm image show    \
--urn $i -o table | tr -s " " | egrep "[A-Za-z]" |  grep -v Architecture  )
# echo "+ $LINE"

INST=$(    echo $i | cut -d ":" -f2    )

HYPE=$(    echo $LINE | cut -d " " -f2 )

LOCATION=$(echo $LINE | cut -d " " -f3 )

DATE=$(    echo $LINE | cut -d " " -f4 )

formateo3 "$INST" "$LOCATION" "${HYPE} ${DATE}" 

done

fi

fi
}

