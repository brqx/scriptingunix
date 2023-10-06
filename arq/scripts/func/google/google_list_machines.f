# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de maquinas para usar con VM - Capitulo 029
#-------------------------------------------------------------------

# alias gc2i

gc_list_machines()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_list_machines_i} [$VER]	"
echo "=========================================================="
echo "Format  : gc2m | gc_list_images [PUB] [SKU] [ARQ]         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Fichero especifico para las maquinas - para user el file_date
TMP_FILE=${TMPDIR}google_cloud_file_machines_tmp.dat
FECHA_FICH="$(file_date)"
# List machines for a zone

STL_01_LEN=18
STL_02_LEN=18
STL_03_LEN=6

# Sacamos las maquinas de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}"       Listado de Maquinas"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
gc_info | egrep "[A-Za-z0-9]" | grep -v "Informacion"
echo "----------------------------------------------------"
formateo4 "Nombre" "Zona" "CPU" "Memoria"
echo "----------------------------------------------------"

# Podemos comprobar la fecha del fichero para ver si es moderno
# y evitar otra consulta a google

# echo "${FECHA} != ${FECHA_FICH}"

# Opcion decode - encode : base64 --decode

if [ "${FECHA}" != "${FECHA_FICH}" ] ; then
gcloud compute machine-types list --filter="zone:(  ${ZONE} )"  --format=value"(NAME,ZONE,CPUS,MEMORY_GB)" > $TMP_FILE
fi


for i in  $( cat ${TMP_FILE} | tr "\t" "@" ) ; do

CLEAN_LINE="$( echo $i | tr '@' ' ' )"

maquina="$(    echo ${CLEAN_LINE} | cut -d ' ' -f1 )"

zona="$(       echo ${CLEAN_LINE} | cut -d ' ' -f2 )"

cpu="$(        echo ${CLEAN_LINE} | cut -d ' ' -f3 )"

memoria="$(    echo ${CLEAN_LINE} | cut -d ' ' -f4 )"


formateo4 "${maquina}" "${zona}" "${cpu}" "${memoria}"

done
echo "----------------------------------------------------"

fi
}

