# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Storage VM - Capitulo 029
#-------------------------------------------------------------------

# alias az3l

az_storage_account_set()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establede la cuenta de almacenamiento en Azure [$VER]						"
echo "=========================================================="
echo "Format  : az3set_sa | az_storage_account_set                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

if [ "${1}" == "" ] ; then
STORAGE_ACCOUNT="tfbrqxaccount"
else
STORAGE_ACCOUNT=$1
fi

fi
}

#-------------------------------------------------------------------

az_storage_container_set()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establede el contenedor de Blobs en Azure [$VER]						"
echo "=========================================================="
echo "Format  : az3set_co | az_storage_container_set                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

if [ "${1}" == "" ] ; then
STORAGE_CONTAINER="publicbrqx"
else
STORAGE_CONTAINER=$1
fi

fi
}
