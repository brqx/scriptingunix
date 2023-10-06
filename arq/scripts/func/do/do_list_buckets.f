# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Storage VM - Capitulo 027
#-------------------------------------------------------------------

# alias do3lb

do_list_buckets()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_buckets_i} [$VER]						"
echo "=========================================================="
echo "Format  : do3lb | do_list_buckets                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

echo "----------------------------------------------------"
echo ${orange}"Listado de Buckets [${VER}]"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

STL_01_LEN=23
STL_02_LEN=23
STL_03_LEN=23

# Nombres de las cuentas de almacenamiento
for i in  $( s3cmd ls | tr -s " " | tr " " "@" ) ; do

mybucket=$(echo $i | cut -d '@' -f3 )
fecha=$(echo $i | cut -d '@' -f1 )
url=$(s3cmd info ${mybucket} | grep URL | tr -s  ' ' | cut -d ' ' -f3 )

formateo3 "${mybucket}" "${fecha}" "${url}"
done

echo "----------------------------------------------------"


fi
}

