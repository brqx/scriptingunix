# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Paso 3 - Crear/Cambiar nueva rama

# Ejemplo de git - Generacion de una nueva rama - Capitulo 029
# ==============================================
# Nota : Se genera checkout en el Capitulo 022
# ----------------------------------------------

git_checkout_i="Cambia/Genera una nueva rama en GIT [$VER]"

git_checkout()
{
VER="0.0.0.1"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${git_checkout_i} [${VER}]"
echo "=========================================================="
echo "Format  : gik | git_ckeckout RAMA               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Ejecuta bash en nuestro pod

RAMA=$1

# Hooks para kubernetes

# Cambiamos/Generamos una nueva rama
git checkout -b "${RAMA}"

# Ajustamos el path con git --> Pendiente fin de curso
# check_short_paths

fi
}

# ----------------------------------------------
