# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Listado de imagenes para VM - Capitulo 027
#-------------------------------------------------------------------

# alias do2id

do_list_distribution_images()
{
VER="0.0.3"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${do_list_distribution_images_i}  [$VER]				                        "
echo "=========================================================="
echo "Format  : do2id | do_list_distribution_images          "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

do_list_application_images "distro"

fi
}

#-------------------------------------------------------------------

__manage_list_image_type()
{
if [ "${TIPO}" == ""     ] ; then
TIPO="app"
fi

if  [ "${TIPO}" == "app" ] ; then
TIPO_NAME="Application"
doctl compute image list-application |  tr -s " " | grep -v "Distribution"  | tr " " "@" > $TMP_FILE
STL_01_LEN=56

else
TIPO_NAME="Distribution"
doctl compute image list-distribution | tr -s " " | grep -v "Distribution"  | tr " " "@" > $TMP_FILE
STL_01_LEN=26

fi

}
