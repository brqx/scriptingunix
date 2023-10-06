# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Fast Connect to Instance to any port
#-------------------------------------------------------------------

# alias do2s --> SSH to instance - Capitulo 027
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
do_connect_con_ssh()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_connect_con_ssh_i} [$VER]			"
echo "=========================================================="
echo "Format  : do2s | do_connect_vm IP_instancia [SSH_PORT] [SSH_USER]  "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Key debe establecerse como variable global

IP_INSTANCIA=$1
SSH_PORT=$2
SSH_USER=$3
KEY_PASSED=$4

if    [ "${KEY_PASSED}" == "" ] ; then
  if    [ "${KEY}" == "" ] ; then
    #Cambiar por el vuestro o pasarlo por paramatro
    KEY=${HOME}/.ssh/digital
  fi
else
  KEY=${KEY_PASSED}
fi


if    [ "${SSH_USER}" == "" ] ; then
#Common user for Digital Ocean
SSH_USER=root
fi

if    [ "${SSH_PORT}" == "" ] ; then
#Common port for Digital Ocean
#The idea is to change to 60022
SSH_PORT=22
fi

ssh -oPort=${SSH_PORT} -i ${KEY} ${SSH_USER}@${IP_INSTANCIA}

fi
}
