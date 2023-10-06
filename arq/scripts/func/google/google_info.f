# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Informacion Cuenta de Google - Capitulo 029
#-------------------------------------------------------------------

# alias gci

gc_info()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_info_i} [$VER]			    "
echo "=========================================================="
echo "Format  : gci | gc_info [extended]                        "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INFO=$1
# Ejemplo de ficheros temporales para optimizar la salida

TMP_FILE=${TMPDIR}/google_cloud_file_tmp.dat

gcloud info > ${TMP_FILE}

STL_01_LEN=30
STL_02_LEN=20
STL_03_LEN=22

echo ${orange}"Informacion Cuenta Google Cloud"$(textreset)
echo "==--==--==--==--==--==--==--==--==--"

PROJECT="$(cat ${TMP_FILE} | grep Project | cut -d '[' -f2 | cut -d ']' -f1)"

ZONE="$(   cat ${TMP_FILE} | grep zone | cut -d '[' -f2 | cut -d ']' -f1)"

REGION="$( cat ${TMP_FILE} | grep region | cut -d '[' -f2 | cut -d ']' -f1)"

if [ "${INFO}" == "extended" ] ; then
NUMBER="$(gcloud projects describe ${PROJECT} --format='get(projectNumber)')"

formateo4 "${PROJECT}" "${REGION}" "${ZONE}"  "${NUMBER}"
else
formateo3 "${PROJECT}" "${REGION}" "${ZONE}"
fi

fi
}

