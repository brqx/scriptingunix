# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Storage VM - Capitulo 029
#-------------------------------------------------------------------

# alias az3l

az_list_containers()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_list_containers_i} [$VER]						"
echo "=========================================================="
echo "Format  : az3lc | az_list_containers [CUENTA]                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

az_storage_account_set $1


# Nombres de las cuentas de almacenamiento
INSTANCIAS=$(az storage container list \
--account-name ${STORAGE_ACCOUNT}      \
--auth-mode login --output table | egrep "[A-Za-z0-9]" | grep -v "Name" |  cut -d " " -f1)

echo "----------------------------------------------------"
echo ${orange}"Listado de Storage (Cuentas de Almacenamiento) [${VER}]"$(textreset)
echo "----------------------------------------------------"
formateo3 "Nombre" "Grupo de Recuros" "Fecha"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

STL_01_LEN=22
STL_02_LEN=40

for i in ${INSTANCIAS} ; do
LINE=$(az storage container show    \
--account-name ${STORAGE_ACCOUNT}   \
--name $i --auth-mode login --output table | egrep "[A-Za-z0-9]"  | tr -s  " " | grep -v "Name" )

STATUS=$(echo $LINE | cut -d " " -f2 )
DATE=$(echo $LINE | cut -d " " -f3 | cut -c1-9 )

formateo3 "$i" "${STATUS}" "${DATE}" 

done
echo "----------------------------------------------------"


fi
}

