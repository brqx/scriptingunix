# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de regiones de Digital Ocean - Capitulo 027
#-------------------------------------------------------------------

# alias dori

do_info_regions()
{
VER="0.0.4"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_info_regions_i} [$VER]				"
echo "=========================================================="
echo "Format  : dori | do_info_regions         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}digital_ocean_file_tmp.dat

# Sacamos las imagenes de nuestra region configurada

# Ya no las necesito
# __regions_digital_ocean

STL_01_LEN=6
STL_02_LEN=20
STL_03_LEN=15

echo "----------------------------------------------------"
echo ${orange}" Listado de Regiones con estado y opciones"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo4 "Slug" "Nombre" "Estado | Num" "Funcionalidades"
echo "----------------------------------------------------"

# Generacion Fichero de informacion de las zonas
doctl compute region list -o json | egrep "[a-zA-Z0-9]"  | tr -s " " | tr -d "," | tr -d '"' | tr -d ":" | tr -d "[" | cut -c2- | tr " " "@" > ${TMP_FILE}

# echo "Fichero Generado"
ENABLE_FEATURES=1
ZONE=""


for item in  $( cat ${TMP_FILE}  ) ; do

# Las linesa estan listas

#slug@blr1
#name@Bangalore@1

# SI el item tiene arroba
if [[ "${item}" == *"@"* ]]; then 
BASE=$(echo $item | cut -d "@" -f1 )
VALUE="$(echo $item | cut -d '@' -f2- | tr '@' ' ' )"
else
# Si el item no tiene arroba
BASE="${item}"
fi

# echo "+ $item --> $BASE - $VALUE"

case ${BASE} in 
"slug")
  # Desactivadmos las features

  # Si es una zona y no es la primera
  # echo "$item es una zona : $BASE"

   if [ "${ZONE}" != "" ] ; then
     formateo4 "${ZONE}" "${CITY}" "${STATUS} | ${NUM_SIZES}" "${CAD_FEATURES}"
     # Un array - depende de las distribuciones
     SIZES[${ZONE}]="${CAD_SIZES}"
   fi
  ZONE="${VALUE}"
  # Obtenemos STATUS
  get_region_status_short $ZONE 

  # Desactivamos features
  ENABLE_FEATURES=1
;;

# name@San@Francisco@3
"name")
  CITY="${VALUE}"
;;
"sizes")
  c=0
  CAD_SIZES=""
  ENABLE_SIZES=0
;;
"available")
  NUM_SIZES=$c
  # Desactivamos los sizes
  ENABLE_SIZES=1
;;
"features")
# Son las funcionalidades de la zona
ENABLE_FEATURES=0
CAD_FEATURES=""
# echo "Vaciamos y Preparamos Features"
;;
esac

if [ "${ENABLE_SIZES}" == "0" ] ; then
if [ "${BASE}" != "sizes" ] ; then
let c++
CAD_SIZES="${CAD_SIZES} ${BASE}"
fi
fi

if [ "${ENABLE_FEATURES}" == "0" ] ; then
if [ "${BASE}" != "features" ] ; then
# echo "Insertamos feature $item $BASE"
# echo "Features : $CAD_FEATURES "
CAD_FEATURES="${CAD_FEATURES} ${BASE}"
fi

fi

#formateo3 "${zona}" "${region}" "${estado}" 

done

# Ultima zona ( ya que mostramos al final de cada trozo)
formateo4 "${ZONE}" "${CITY}" "${STATUS} | ${NUM_SIZES}"  "${CAD_FEATURES}"

echo "----------------------------------------------------"

fi
}

