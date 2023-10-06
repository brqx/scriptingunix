# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Veriones Digital Ocean - Capitulo 029
#-------------------------------------------------------------------

# alias dov

do_get_version()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_get_version_i} [$VER]			    "
echo "=========================================================="
echo "Format  : dov | do_get_version                        "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

VER_DO=$(doctl version | grep doctl |  cut -d " " -f3)

VER_S3=$(s3cmd --version | cut -d ' ' -f3)

echo "----------------------------------------------------"

echo ${orange}"Version Digital Ocean ${red}( doctl - s3cmd )"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"
formateo3 "${VER_DO}" "${VER_S3}" "${FECHA}"

echo "----------------------------------------------------"

fi
}

