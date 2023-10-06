# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de instancias VM - Capitulo 027
#-------------------------------------------------------------------

# alias do2l

do_list_vm()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_vm_i} [$VER]						            "
echo "=========================================================="
echo "Format  : do2l | do_list_vm                               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}digital_ocean_file_tmp.dat

# ID Name Public IPri IPPub IPv6 Memory VCPUs Disk Region 
# Image VPC UUID Status Tags Features Volumes

# 2          4    5(mm) 6 (cpus) 7(disk) 8 (Region)    
# vm-1 10.114.0.3 1024 1 25 fra1 Fedora 37 x64 8dde8451-67ec-4af1-9e69-c21b6f608c12 active monitoring,droplet_agent,private_networking 
# 376950165 vm-0 164.92.190.24 10.114.0.4 1024 1 25 fra1 Fedora 37 x64 8dde8451-67ec-4af1-9e69-c21b6f608c12 active monitoring,droplet_agent,private_networking 
# 376950166 vm-2 164.92.188.248 10.114.0.2 1024 1 25 fra1 Fedora 37 x64 8dde8451-67ec-4af1-9e69-c21b6f608c12 active monitoring,droplet_agent,private_networking 

doctl compute droplet list | tr -s " " | grep -v "Features" > ${TMP_FILE}

#NAME              ZONE             MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP   STATUS
#nginx-instance-0  europe-west10-a  e2-micro                   10.214.0.23  34.32.25.186  RUNNING

echo ${orange}"Listado de Instancias (IP Zona RG)"$(textreset)
echo "==--==--==--==--==--==--==--==--==--"

STL_01_LEN=23
STL_02_LEN=23
STL_03_LEN=23

for i in $( cat ${TMP_FILE} | tr " " "@" ) ; do

LINE=$(echo $i | tr "@" " " )

NAME=$(   echo $LINE | cut -d " " -f2 )
ZONE=$(   echo $LINE | cut -d " " -f8 )
MM=$(     echo $LINE | cut -d " " -f6 )
IP=$(     echo $LINE | cut -d " " -f3 )
DISK=$(   echo $LINE | cut -d " " -f7 )
CPUS=$(   echo $LINE | cut -d " " -f5 )

# IP=$(gc vm list-ip-addresses -n ${i} -g ${RG} -o table | egrep "[A-Za-z0-9]"  | grep -v "Public" | tr "\t" " " | tr -s " " | cut -d " " -f2 )

formateo4 "${NAME}" "${ZONE}" "${IP}" "${MM} - ${CPUS} - ${DISK}" 

done


fi
}

