# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de regiones de Digital Ocean - Capitulo 027
#-------------------------------------------------------------------

# alias do2r

do_list_regions()
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

TMP_FILE=${TMPDIR}digital_ocean_file_tmp.dat

STL_01_LEN=18
STL_02_LEN=20

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}"       Listado de Zonas"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo3 "Zona" "Region" "Estado"
echo "----------------------------------------------------"

doctl compute region list | grep -v Slug | sort | tr -s " " | tr " " "@" > $TMP_FILE

for i in  $( cat ${TMP_FILE}  ) ; do

CLEAN_LINE="$(echo $i | tr '@' ' ' )"

slug="$(    echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

region="$(  echo ${CLEAN_LINE} | cut -d ' ' -f2- )"

get_region_status_long "${region}"

formateo3 "${slug}" "${REGION}" "${STATUS}" 

done
echo "----------------------------------------------------"

fi
}

