# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Desconexion AWS Vault  - Capitulo 029
# alias awvu

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

aws_vault_unset()
{

VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${aws_vault_unset_i} [$VER]			"
echo "=========================================================="
echo "Format  : awvu | aws_vault_unset"
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

METHOD=$1

unset AWS_VAULT

if [ "${METHOD}" == "all" ] ; then
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_REGION
fi

fi

}

