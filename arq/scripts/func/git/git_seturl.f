# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Paso 4 - Ajuste del Token para subir codigo con Git

# Paso 4 - Ajustar Token

# Ejemplo de git - Reportar cambio - Capitulo 029
# ==============================================
# Nota : Se genera commit en el Capitulo 022
# ----------------------------------------------
git_seturl_i="Ajuste del Token para subir codigo con Git"

git_seturl()
{
VER="0.0.0.1"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${git_seturl_i} [${VER}]"
echo "=========================================================="
echo "Format  : gitseturl | git_seturl REPO [USER]              "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# No permitimos que se pase el Token por seguridad. 
# Debe ir a una variable

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

if [ "${TOKEN}" == "" -o "${REPO}" == "" ] ; then
# Si no existe el Token no vamos a hacer nada
# Si no se pasa el repositorio tampoco hacemos nada
ACTUAR=1
fi


if [ ${ACTUAR} ] ; then 

git remote set-url origin "https://${USER_ACTIVO}:${TOKEN}@github.com/${USER_ACTIVO}/${REPO}"

fi


fi
}

# ----------------------------------------------
