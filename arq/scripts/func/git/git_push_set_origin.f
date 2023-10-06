# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Paso N - funcione utilies con GitCrear/Cambiar nueva rama

# Ejemplo de git - Funciones Utiles con Git - Capitulo 029
# ==============================================
# Nota : Se generan en el Capitulo 022
# ----------------------------------------------


parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# ----------------------------------------------

# Limpia la rama de git quitandole los parentesis
git_get_branch()
{

# Add git branch if its present to PS1
git --version &> /dev/null
if [ "$?" == "0" ] ; then
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
parse_git_branch | tr -d ")|("
fi

}

# ----------------------------------------------

git_push_set_origin_i="Hace un push origin resolviendo el problema de la rama actual ${VER}"

git_push_set_origin()
{
VER="0.0.0.1"
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${git_push_set_origen_i}"
echo "=========================================================="
echo "Format  : gitset | git_push_set_origin               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Ejecutamos git push origin

git push origin
if [ "$?" != "0" ] ; then
git push --set-upstream origin $(git_get_branch)

fi

fi
}
# ----------------------------------------------
