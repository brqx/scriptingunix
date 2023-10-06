# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Informacion Cuenta de Google - Capitulo 027
#-------------------------------------------------------------------

# alias gci

docean_info()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${docean_info_i} [$VER]			    "
echo "=========================================================="
echo "Format  : doai | docean_info [extended]                        "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INFO=$1
# Ejemplo de ficheros temporales para optimizar la salida

TMP_FILE=${TMPDIR}/digital_ocean_file_tmp.dat

doctl account get -o json | egrep "[A-Za-z0-9]" | tr -d '"' | tr -d "," | tr -s " " > ${TMP_FILE}

STL_01_LEN=10

EMAIL="$(cat ${TMP_FILE} | grep "@" | cut -d " " -f3  | base64 )"

echo "----------------------------------------------------"
echo ${orange}"Informacion Digital Ocean"$(textreset)
echo "Cuenta cifrada : ${red}${EMAIL}"$(textreset)
formateo2 "Estado" "Limites Droplets Ips y Disco"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

STL_01_LEN=14
STL_02_LEN=6
STL_03_LEN=6

L_DROP="$(cat ${TMP_FILE} | grep "droplet_limit"     | cut -d " " -f3 )"
L_IP="$(  cat ${TMP_FILE} | grep "reserved_ip_limit" | cut -d " " -f3 )"
L_DISK="$(cat ${TMP_FILE} | grep "volume_limit"      | cut -d " " -f3 )"
STATUS="$(cat ${TMP_FILE} | grep "status"            | cut -d " " -f3 )"

formateo4 "${STATUS}" "${L_DROP}" "${L_IP}" "${L_DISK}"
echo "----------------------------------------------------"

fi
}

