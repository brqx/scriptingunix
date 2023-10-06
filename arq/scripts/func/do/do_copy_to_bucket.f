# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Copia de un fichero a un Bucket Digital Ocean - Capitulo 029
#-------------------------------------------------------------------

# alias do3c

do_copy_to_bucket()
{
VER="0.0.4"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" -o "${2}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_copy_to_bucket} [$VER]       "
echo "=========================================================="
echo "Format  : do3c | do_copy_to_bucket fichero bucket [CARPETA_DESTINO] "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Si solo se pasa el fichero lo copia al raiz

FICHERO=$1
BUCKET=$2

URL_BUCKET="s3://${BUCKET}/"

s3cmd put ${FICHERO}  ${URL_BUCKET} 


fi
}
