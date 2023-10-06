# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de imagenes para VM - Capitulo 029
#-------------------------------------------------------------------

# alias gc2i

gc_list_images()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_list_images_i}  [$VER]				                        "
echo "=========================================================="
echo "Format  : gc2i | gc_list_images [PUB] [SKU] [ARQ]         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Fichero especifico para las imagenes - para user el file_date
TMP_FILE=${TMPDIR}google_cloud_file_images_tmp.dat
FECHA_FICH="$(file_date)"

FINAL_FILE="${TMP_FILE}_22"


DISTRO=$1
VER_DISTRO=$2

STL_01_LEN=52
STL_02_LEN=23

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}"       Listado de Imagenes"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
if [ "${ENABLED_SHORT}" == "0" ] ; then
formateo_short "Nombre" "Distrubucion" "Version"
else
formateo3 "Nombre" "Distrubucion" "Version"
fi
echo "----------------------------------------------------"

ACTUAR=1

# Si existe el fichero miramos la fecha
if [ -f ${TMP_FILE} ] ; then
# echo "Existe el fichero"
# Guardamos el fichero en base64
  if [ "${FECHA}" != "${FECHA_FICH}" ] ; then
    # echo "La fecha es distinta"
    ACTUAR=0
  fi
else
  ACTUAR=0
fi

# echo "Actuar : $ACTUAR "
if [ "${ACTUAR}" == "0"  ] ; then
# echo "Antes de lanzar - ${FECHA} -- ${FECHA_FICH}" 
gcloud compute images list | grep -v "DEPRECATED" | tr -s " " | tr " " "@" > $TMP_FILE
fi

# Si se pasa ver_distro se ha pasado distro
if [ "${VER_DISTRO}" != "" ] ; then 
#  echo "Caso 1"
  cat ${TMP_FILE} | grep ${DISTRO} | grep ${VER_DISTRO} > ${FINAL_FILE}
elif [ "${DISTRO}" != "" ] ; then
#  echo "Caso 2 - Solo se pasa distro"
  cat ${TMP_FILE} | grep ${DISTRO} | grep ${VER_DISTRO} > ${FINAL_FILE}
else
#  echo "Caso 3 - no se pasa nada"
  cp ${TMP_FILE} ${FINAL_FILE}
fi

for i in  $( cat ${FINAL_FILE}  ) ; do

CLEAN_LINE="$(echo $i | tr '@' ' ' )"

imagen="$(    echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

distro="$(    echo ${CLEAN_LINE} | cut -d ' ' -f2 )"

subdistro="$( echo ${CLEAN_LINE} | cut -d ' ' -f3 )"

if [ "${ENABLED_SHORT}" == "0" ] ; then
formateo_short "${imagen}" "${distro}" "${subdistro}" 
else
formateo3 "${imagen}" "${distro}" "${subdistro}" 
fi

done
echo "----------------------------------------------------"

rm -f ${FINAL_FILE}

fi
}

