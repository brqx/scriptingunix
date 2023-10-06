# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de imagenes para VM - Capitulo 027
#-------------------------------------------------------------------

# alias do2ia

do_list_application_images()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_applicatoin_images_i}  [$VER]				                        "
echo "=========================================================="
echo "Format  : do2ia | do_list_application_images [distro | app ]         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else


# Tipo puede ser : app | distro
TIPO=$1


# Fichero especifico para las imagenes - para user el file_date
TMP_FILE=${TMPDIR}digital_ocean_file_tmp.dat

# Tambien gestionamos la anchura
__manage_list_image_type

# Segundo fichero interior para manejar las imagenes
TMP_INT="${TMP_FILE}_int"

STL_02_LEN=12
STL_03_LEN=6

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}" Listado de Imagenes de ${TIPO_NAME}"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo4 "Nombre" "Distro" "Disco" "Size (id)"
echo "Nota: Las regiones estan en array ${red}REGIONS_APP[id] "$(textreset)
echo "----------------------------------------------------"


#ID           Name                Type      Distribution    Slug    Public    Min Disk
#141194485    fedora-brqx-15-2    custom    Fedora                  false     10


for i in  $( cat ${TMP_FILE}  ) ; do

CLEAN_LINE="$(echo $i | tr '@' ' ' )"

id="$(       echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

# "name": "RStudio 2021.09.2+382 on Ubuntu 20.04",

doctl compute image get ${id} -o json > ${TMP_INT}

imagen=$(   cat ${TMP_INT} | jq '.[]."name"'  | tr -d '"')

distro=$(   cat ${TMP_INT} | jq '.[]."distribution"' | tr -d '"' )

min_disk=$( cat ${TMP_INT} | jq '.[]."min_disk_size"' )

size=$(     cat ${TMP_INT} | jq '.[]."size_gigabytes"' )

regions=$(  cat ${TMP_INT} | jq '.[]."regions"[]' | tr -d '"' | tr "\n" " " )

formateo4 "${imagen}" "${distro}" "${min_disk}"  "${size} (${id})"

# Lo guardamos en un array
REGIONS_APP[${id}]="${regions}"

done
echo "----------------------------------------------------"

fi
}

