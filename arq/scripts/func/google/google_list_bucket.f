# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Bucket de Gcloud - Capitulo 029
#-------------------------------------------------------------------

# alias gc3l

gc_list_bucket()
{
VER="0.0.4"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_list_bucket_i} [$VER]				"
echo "=========================================================="
echo "Format  : gc3l | gc_list_bucket BUCKET                    "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}google_cloud_file_tmp.dat

BUCKET=$1

URL_BUCKET="gs://${BUCKET}/"

gsutil ls -l gs://${BUCKET}/ | grep -v TOTAL | tr -s " "  > ${TMP_FILE}

# Nombres de las cuentas de almacenamiento

echo "----------------------------------------------------"
echo ${orange}"Listado del bucket ${BUCKET} - ${blue}${URL_BUCKET} ${yellow}[${VER}]"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

for i in  $( cat ${TMP_FILE} | tr " " "@" ) ; do

CLEAN_LINE="$( echo $i | tr '@' ' ' )"

# echo "${CLEAN_LINE}"
# Preparamos ecut de 10 posiciones
set_corte 10

mybucket="$( echo ${CLEAN_LINE} | cut -d ' ' -f3 | cut -d "/" -f3- )"
fecha="$(    echo ${CLEAN_LINE} | cut -d ' ' -f2 | ecut )"
size="$(     echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

formateo3 "${mybucket}" "${fecha}" "${size}"
done


echo "----------------------------------------------------"


fi
}

