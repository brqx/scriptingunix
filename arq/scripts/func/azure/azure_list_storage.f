# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Storage VM - Capitulo 029
#-------------------------------------------------------------------

# alias az3l

az_list_storage()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_list_storage_i} [$VER]						"
echo "=========================================================="
echo "Format  : az3ls | az_list_storage                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# AccessTier AllowBlobPublicAccess (1)
# CreationTime EnableHttpsTrafficOnly 
# Kind Location MinimumTlsVersion Name PrimaryLocation 
# ProvisioningState ResourceGroup StatusOfPrimary 
# AllowCrossTenantReplication AllowSharedKeyAccess 
# DefaultToOAuthAuthentication DnsEndpointType 
# PublicNetworkAccess

# Nombres de las cuentas de almacenamiento
INSTANCIAS=$(az storage account list -o table | tr -s  " " | cut -d " " -f8 | egrep "[A-Z|a-z]" | grep -v "Name")

STL_01_LEN=22
STL_02_LEN=40

echo "----------------------------------------------------"
echo ${orange}"Listado de Storage (Cuentas de Almacenamiento) [${VER}]"$(textreset)
echo "----------------------------------------------------"
formateo3 "Nombre" "Grupo de Recuros" "Informacion (Region...)"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

STL_01_LEN=22
STL_02_LEN=40

for i in ${INSTANCIAS} ; do
LINE=$(az storage account list -o table | tr -s  " " | grep "$i")

ALLOW_BLOB=$(echo $LINE | cut -d " " -f1 )
ZONE=$(echo $LINE | cut -d " " -f6 )

# Grupo de Recursos
RG=$(echo $LINE | cut -d " " -f11 )

formateo3 "$i" "$RG" "${ZONE} ${ALLOW_BLOB} otros" 

done
echo "----------------------------------------------------"


fi
}

