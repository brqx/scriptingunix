# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de zonas de Google Cloud - Capitulo 029
#-------------------------------------------------------------------

# alias gc2z

gc_list_zones()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_list_zones_i} [$VER]				"
echo "=========================================================="
echo "Format  : gcz | gc_list_zones         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}google_cloud_file_tmp.dat

STL_01_LEN=28
STL_02_LEN=30

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}"       Listado de Zonas"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo3 "Zona" "Region" "Estado"
echo "----------------------------------------------------"

gcloud compute zones list | grep -v "MAINTENANCE" | tr -s " " | tr " " "@" > $TMP_FILE

for i in  $( cat ${TMP_FILE}  ) ; do

CLEAN_LINE="$(echo $i | tr '@' ' ' )"

zona="$(    echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

region="$(    echo ${CLEAN_LINE} | cut -d ' ' -f2 )"

estado="$( echo ${CLEAN_LINE} | cut -d ' ' -f3 )"

formateo3 "${zona}" "${region}" "${estado}" 

done
echo "----------------------------------------------------"

fi
}

