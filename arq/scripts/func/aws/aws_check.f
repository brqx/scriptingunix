# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.2
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de instancias EC2 - Capitulo 029
#-------------------------------------------------------------------

# alias awk

aws_check()
{
VER="0.0.3"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${aws_check_i} [$VER]						"
echo "=========================================================="
echo "Format  : awk | aws_check                         "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

TMP_FILE=${TMPDIR}/aws_sure_file_tmp.dat

aws sts get-caller-identity | tr -s " " | egrep "[A-Za-z0-9]" > ${TMP_FILE}

STL_01_LEN=10

USERID=$(cat ${TMP_FILE} | grep 'UserId' | cut -d '"' -f4  | base64 | tr 'A' 'Z' | tr '5'  '2' )

CUENTA_CLEAR=$(cat ${TMP_FILE} | grep 'Account' | cut -d '"' -f4)
CUENTA="$(echo ${CUENTA_CLEAR} | base64 | tr '1' '3' | tr '5'  '2' )"

ARN=$(cat ${TMP_FILE} | grep 'Arn' | cut -d '"' -f4  | sed "s;${CUENTA_CLEAR};${CUENTA};g" )


echo "----------------------------------------------------"
echo ${orange}"Informacion Aws Cifrada - ${blue} ${FECHA} "$(textreset)
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--"

STL_01_LEN=14

formateo2 "UserID" "${USERID}"
formateo2 "Cuenta" "${CUENTA}"
formateo2 "Arn"    "${ARN}"

echo "----------------------------------------------------"

rm -f ${TMP_FILE}

fi
}

