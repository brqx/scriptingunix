# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Fast Connect to Instance to any port
# alias az2s --> SSH to instance
#-------------------------------------------------------------------

# alias az2s --> SSH to instance - Capitulo 029
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
az_connect_vm()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${az_connect_vm_i} [$VER]			"
echo "=========================================================="
echo "Format  : az2s | az_connect_vm IP_instancia [SSH_PORT] [SSH_USER]  "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Key debe establecerse como variable global

IP_INSTANCIA=$1
SSH_PORT=$2
SSH_USER=$3
KEY_PASSED=$4

if    [ "${KEY_PASSED}" == "" ] ; then
  if    [ "${KEY}" == "" ] ; then
    #Common key for Azure
    KEY=${HOME}/.ssh/azure
  fi
else
  KEY=${KEY_PASSED}
fi


if    [ "${SSH_USER}" == "" ] ; then
#Common user for Azure
SSH_USER=azureuser
fi

if    [ "${SSH_PORT}" == "" ] ; then
#Common port for Azure
#The idea is to change to 60022
SSH_PORT=60022
fi

ssh -oPort=${SSH_PORT} -i ${KEY} ${SSH_USER}@${IP_INSTANCIA}

fi
}
