# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de instancias VM - Capitulo 029
#-------------------------------------------------------------------

# alias gc2l

gc_list_vm()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${gc_list_vm_i} [$VER]						            "
echo "=========================================================="
echo "Format  : gc2l | gc_list_vm                               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}google_cloud_file_tmp.dat

gcloud compute instances list | tr -s " " | grep -v "MACHINE" > ${TMP_FILE}

#NAME              ZONE             MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP   STATUS
#nginx-instance-0  europe-west10-a  e2-micro                   10.214.0.23  34.32.25.186  RUNNING

echo ${orange}"Listado de Instancias (IP Zona RG)"$(textreset)
echo "==--==--==--==--==--==--==--==--==--"

STL_01_LEN=23
STL_02_LEN=23
STL_03_LEN=23

for i in $( cat ${TMP_FILE} | tr " " "@" ) ; do

LINE=$(echo $i | tr "@" " " )

NAME=$(   echo $LINE | cut -d " " -f1 )
ZONE=$(   echo $LINE | cut -d " " -f2 )
MACHINE=$(echo $LINE | cut -d " " -f3 )
IP=$(     echo $LINE | cut -d " " -f5 )
STATUS=$( echo $LINE | cut -d " " -f6 )

# IP=$(gc vm list-ip-addresses -n ${i} -g ${RG} -o table | egrep "[A-Za-z0-9]"  | grep -v "Public" | tr "\t" " " | tr -s " " | cut -d " " -f2 )

formateo4 "${NAME}" "${ZONE}" "${MACHINE} ${IP}" 

done


fi
}

