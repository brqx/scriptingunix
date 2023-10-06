# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Paso 1 - Descargar repositorio git - Capitulo 029


git_clone()
{
VER="0.0.0.1"
git_checkout_i="Cambia/Genera una nueva rama en GIT [$VER]"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${git_clone_i} [${VER}]"
echo "=========================================================="
echo "Format  : gitclone | git_clone REPO [USER]              "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Ejecuta bash en nuestro pod

REPO=$1
USER_PASADO=$2

ACTUAR=1

# Damos opcion de que no se pase el usuario
# Intentara usar la variable USER
if [ "${USER_PASADO}" == "" ] ; then

# Si no se pasa nada y no hay definida una variable USER no hacemos nada
  if [ "${USER}" != "" ] ; then
  # Si hay definida una variable ... actuamos
    ACTUAR=0
    USER_ACTIVO=${USER}
  fi
else
  # Si se pasa el usuario ... actuamos
  ACTUAR=0
  USER_ACTIVO=${USER_PASADO}
fi



if [ ${ACTUAR} ] ; then 

git clone "https://github.com/${USER_ACTIVO}/${REPO}"

fi


fi
}

# ----------------------------------------------
