# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Fast Connect to Instance
#-------------------------------------------------------------------

# alias gc2s 1--> SSH to instance - Capitulo 029
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
gc_connect_con_gcloud()
{
VER="0.0.1"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_connect_con_gcloud_i} [$VER} "
echo "=========================================================="
echo "Format  : gc2s1 | gc_connect_con_google_cloud INSTANCIA   "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else


INSTANCIA=$1

gc_info

echo "----------------------------------"

# Conexion puerto 22 ? ¿ SOLO ?
gcloud compute ssh --zone ${ZONE} "${INSTANCIA}" --project "${PROJECT}"

fi
}
