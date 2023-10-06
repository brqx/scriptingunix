# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Muestra el log de la instancia - Capitulo 029
#-------------------------------------------------------------------

# alias gc2log

gc_compute_startup_log()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_compute_startup_log_i} [$VER]				"
echo "=========================================================="
echo "Format  : gc2log | gc_compute_startup_log         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

INSTANCIA=$1

# Sacamos las imagenes de nuestra region configurada

echo "----------------------------------------------------"
echo ${orange}" Log de arranque"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
gc_info
echo "----------------------------------------------------"


gcloud compute instances get-serial-port-output ${INSTANCIA} --zone ${ZONE}

echo "----------------------------------------------------"

fi
}

