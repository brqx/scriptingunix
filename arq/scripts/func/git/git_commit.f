# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de git - Reportar cambio - Capitulo 029
# ==============================================
# Nota : Se genera commit en el Capitulo 022
# ----------------------------------------------
git_commit_i="Hace un commit de Git a la rama actual seleccionada [$VER]"

git_commit()
{
VER="0.0.0.1"
##"${1}" == "-?" -o

if [ "${1}" == "-?" -o "${1}" == "" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${git_commit_i} [${VER}]"
echo "=========================================================="
echo "Format  : gic | git_commit INFO               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Ejecuta bash en nuestro pod

INFO=${*}

# Hooks para kubernetes
#__k

# Pendiente
git commit -am "${INFO}"

fi
}

# ----------------------------------------------
