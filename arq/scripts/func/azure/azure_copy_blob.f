# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Storage VM - Capitulo 029
#-------------------------------------------------------------------

# alias az3c

az_copy_blob()
{
VER="0.0.4"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_copy_blob_i} [$VER]						"
echo "=========================================================="
echo "Format  : az3c | az_copy_blob fichero [CARPETA_DESTINO] [CUENTA] [CONTAINER]                        "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Si solo se pasa el fichero lo copia al raiz

FICHERO=$1
TARGET_FOLDER=$2
ACCOUNT=$3
CONTAINER=$4

az_storage_account_set $3

az_storage_container_set $4


az storage copy -s ${FICHERO} -d https://${STORAGE_ACCOUNT}.blob.core.windows.net/${STORAGE_CONTAINER}/${TARGET_FOLDER} 
# --check-length


fi
}

