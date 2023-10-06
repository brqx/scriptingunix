# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Storage VM - Capitulo 029
#-------------------------------------------------------------------

# alias az3l

az_list_blobs()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_list_blobs_i} [$VER]						"
echo "=========================================================="
echo "Format  : az3l | az_list_blobs [CUENTA] [CONTAINER]                        "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

az_storage_account_set $1

az_storage_container_set $2

STL_01_LEN=22
STL_02_LEN=40

# echo "${STORAGE_ACCOUNT} -  ${STORAGE_CONTAINER} "

INSTANCIAS=$(az storage blob list     \
--account-name ${STORAGE_ACCOUNT}     \
--container-name ${STORAGE_CONTAINER} \
--auth-mode login --output table | egrep "[A-Za-z]" | grep -v "Name"   | tr -s " "  | cut -d " " -f1 )

# Nombres de las cuentas de almacenamiento

echo "----------------------------------------------------"
echo ${orange}"Listado de Blobs en ${STORAGE_CONTAINER} [${VER}]"$(textreset)
echo "----------------------------------------------------"
formateo3 "Nombre" "Size" "Fecha"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"


for i in ${INSTANCIAS} ; do
LINE=$(az storage blob list           \
--account-name ${STORAGE_ACCOUNT}     \
--container-name ${STORAGE_CONTAINER} \
--auth-mode login --output table  | tr -s " "  | grep $i )

SIZE=$(echo $LINE | cut -d " " -f4 )
DATE=$(echo $LINE | cut -d " " -f6 | cut -c1-9 )

formateo3 "$i" "${SIZE}" "${DATE}" 

done
echo "----------------------------------------------------"


fi
}

