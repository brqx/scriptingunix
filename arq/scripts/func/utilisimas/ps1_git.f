# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

# ipath --> alias a manage_path
# Permite elegir el tipo de path


enable_ps1_git()
{
GIT_ENABLED=0
__enable_selected_ps1
}

git_ps1_status()
{
if [ "${GIT_ENABLED}" == "0" ] ; then
echo "${green} GIT PS1 HABILITADO"$(textreset)
else
echo "${red} GIT PS1 DESHABILITADO"$(textreset)
fi


}

disable_ps1_git()
{
GIT_ENABLED=1
__enable_selected_ps1
}

# Pendiente de implementar

manage_git_ps1()
{
GIT_PS1="$(parse_git_branch)"
if [ "${GIT_PS1}" != "" ] ; then
echo "${magent}${GIT_PS1}"$(textreset)
fi
}


