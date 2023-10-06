# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de imagenes para VM - Capitulo 027
#-------------------------------------------------------------------

# alias do2iu

do_list_user_images()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_user_images_i}  [$VER]				                        "
echo "=========================================================="
echo "Format  : do2iu | do_list_user_images          "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Fichero especifico para las imagenes - para user el file_date
TMP_FILE=${TMPDIR}digital_ocean_file_tmp.dat

STL_01_LEN=52
STL_02_LEN=23

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}"       Listado de Imagenes"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo4 "Nombre" "Distrubucion" "Disco" "Regiones"
echo "----------------------------------------------------"


# echo "Antes de lanzar - ${FECHA} -- ${FECHA_FICH}" 
doctl compute image list-user | tr -s " " | grep -v "Distribution"  | tr " " "@" > $TMP_FILE

#ID           Name                Type      Distribution    Slug    Public    Min Disk
#141194485    fedora-brqx-15-2    custom    Fedora                  false     10

for i in  $( cat ${TMP_FILE}  ) ; do

CLEAN_LINE="$(echo $i | tr '@' ' ' )"

id="$(       echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

imagen="$(   echo ${CLEAN_LINE} | cut -d ' ' -f2 )"

distro="$(   echo ${CLEAN_LINE} | cut -d ' ' -f4 )"

public="$(   echo ${CLEAN_LINE} | cut -d ' ' -f5 )"

min_disk="$( echo ${CLEAN_LINE} | cut -d ' ' -f6 )"

regions=$(   doctl compute image get ${id} -o json | jq '.[]."regions"[]' | tr -d '"' )

formateo4 "${imagen}" "${distro}" "${min_disk}"  "${regions}"

done
echo "----------------------------------------------------"

fi
}

