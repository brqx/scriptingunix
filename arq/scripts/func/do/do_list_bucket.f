# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Bucket de Digital Ocean - Capitulo 029
#-------------------------------------------------------------------

# alias do3l

do_list_bucket()
{
VER="0.0.4"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_bucket_i} [$VER]				"
echo "=========================================================="
echo "Format  : do3l | do_list_bucket BUCKET                    "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

BUCKET=$1

URL_BUCKET="s3://${BUCKET}/"


STL_01_LEN=23
STL_02_LEN=23
STL_03_LEN=23

# Nombres de las cuentas de almacenamiento

echo "----------------------------------------------------"
echo ${orange}"Listado del bucket ${BUCKET} - ${blue}${URL_BUCKET} ${yellow}[${VER}]"$(textreset)
echo "----------------------------------------------------"
formateo3 "Fichero" "Fecha" "Size (Kb)"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

for i in  $( s3cmd ls ${URL_BUCKET} | tr -s " " | tr " " "@" ) ; do

object=$(echo $i | cut -d '@' -f4 | cut -d '/' -f4 )
fecha=$(echo $i | cut -d '@' -f1 )
size=$(echo $i | cut -d '@' -f3 )


formateo3 "${object}" "${fecha}" "${size}"
done


echo "----------------------------------------------------"


fi
}

