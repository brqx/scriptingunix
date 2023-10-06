# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Generacion de Imagen de una VM - Capitulo 029
#-------------------------------------------------------------------

# alias gc2icreate

gc_image_create()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_image_create} [$VER]				                    "
echo "=========================================================="
echo "Format  : gc2icreate | gc_image_create INSTANCIA IMAGEN         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INSTANCIA=$1
IMAGEN=$2

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}"  Generacion de Instantanea/Imagen: ${IMAGEN}"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
gc_info
echo "----------------------------------------------------"

gcloud beta compute machine-images create ${IMAGEN}  \
--project=${PROJECT}                       \
--description=${IMAGEN}                    \
--source-instance=${INSTANCIA}             \
--source-instance-zone=${ZONE}             \
--storage-location=${REGION}

fi
}

