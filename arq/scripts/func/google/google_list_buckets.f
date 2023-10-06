# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado Buckets - Capitulo 029
#-------------------------------------------------------------------

# alias gc3l

gc_list_buckets()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_list_buckets_i} [$VER]						"
echo "=========================================================="
echo "Format  : gc3lb | gc_list_buckets [CUENTA]                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}google_cloud_file_tmp.dat


# gsutil ls -l gs://your-bucket/ 

gcloud storage buckets list --format="table(name,location,update_time)" | grep -v "NAME" | cut -d ":" -f1 > ${TMP_FILE}


echo "----------------------------------------------------"
echo ${orange}"Listado de Buckets [${VER}]"$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

# Quitamos los dos últimos

# Nombres de las cuentas de almacenamiento
for i in  $( cat ${TMP_FILE} | tr " " "@" ) ; do

# Le quitamos los dos  ultimos caracteres
# Nueva funcion de corte : scut
mybucket="$i"
# Solo valido para bash avanzado
# bucket2=${mybucket:0:-4}
# Valido para cualquier bash
bucket=${mybucket:0:${#mybucket}-3}
# bucket2=${mybucket:0:-4}

# Pasamos como entrada a formateo3 la salida del echo
formateo3 $(echo "${bucket}" | tr "@" " " ) 
done

echo "----------------------------------------------------"


fi
}

