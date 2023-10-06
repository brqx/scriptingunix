# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Fast Connect to Instance to any port
# alias aw2s --> SSH to instance - Capitulo 029
#-------------------------------------------------------------------

# alias aw2s --> SSH to instance
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
aws_connect_ec2()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${aws_connect_ec2_i} [$VER]			"
echo "=========================================================="
echo "Format  : aw2s | aws_connect_ec2 IP_instancia [SSH_PORT] [SSH_USER]  "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

IP_INSTANCIA=$1
SSH_PORT=$2
SSH_USER=$3

if    [ "${SSH_USER}" == "" ] ; then
#Common user for Aws
SSH_USER=ec2-user
fi

if    [ "${SSH_PORT}" == "" ] ; then
#Common port for Aws
#The idea is to change to 60022
SSH_PORT=60022
fi
# Conexion una vez exportada la clave
# Para MAC :
# eval $(ssh-agent)
# Agent pid 37582
# ssh-add -k /Users/macminii7/farmacia2022_rsa.pem 


# Esto es para ubuntu
# ssh -A -oPort=${SSH_PORT} ${SSH_USER}@${IP_INSTANCIA}

ssh -oPort=${SSH_PORT} ${SSH_USER}@${IP_INSTANCIA}
#ssh - A ${SSH_USER}@${IP_INSTANCIA}

fi
}

#-------------------------------------------------------------------

aws_connect_agent_ec2()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${aws_connect_agent_ec2_i} [$VER]			"
echo "=========================================================="
echo "Format  : aw2s | aws_connect_ec2 IP_instancia [SSH_PORT] [SSH_USER]  "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

IP_INSTANCIA=$1
SSH_PORT=$2
SSH_USER=$3

if    [ "${SSH_USER}" == "" ] ; then
#Common user for Aws
SSH_USER=ec2-user
fi

if    [ "${SSH_PORT}" == "" ] ; then
#Common port for Aws
#The idea is to change to 60022
SSH_PORT=60022
fi
# Conexion una vez exportada la clave
# Para MAC :
# eval $(ssh-agent)
# Agent pid 37582
# ssh-add -k /Users/macminii7/farmacia2022_rsa.pem 


# Esto es para ubuntu
# ssh -A -oPort=${SSH_PORT} ${SSH_USER}@${IP_INSTANCIA}

ssh -A -oPort=${SSH_PORT} ${SSH_USER}@${IP_INSTANCIA}
#ssh - A ${SSH_USER}@${IP_INSTANCIA}

fi
}
