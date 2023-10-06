# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de Elastic IP de AWS  - Capitulo 029
# alias awvd

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

aws_vault_duration()
{
VER="0.0.2"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${aws_vault_duration_i} [$VER]			"
echo "=========================================================="
echo "Format  : awvd | aws_vault_duration DURATION PROFILE"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

PROFILE=$1

DURATION=$1

unset AWS_VAULT

if [ "${DURATION}" == "" ] ; then 
DURATION="2h"
fi

if [ "${PROFILE}" == "" ] ; then 
PROFILE="tf"
fi


aws-vault exec --duration=${DURATION} ${PROFILE}

fi

}

