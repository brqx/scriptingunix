# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Copia de un fichero a un Bucket Gcloud - Capitulo 029
#-------------------------------------------------------------------

# alias gc3c

gc_copy_to_bucket()
{
VER="0.0.4"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" -o "${2}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_copy_to_bucket} [$VER]       "
echo "=========================================================="
echo "Format  : gc3c | gc_copy_to_bucket fichero bucket [CARPETA_DESTINO] "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Si solo se pasa el fichero lo copia al raiz

FICHERO=$1
BUCKET=$2

URL_BUCKET="gs://${BUCKET}/"

gsutil cp ${FICHERO}  ${URL_BUCKET} 


fi
}
