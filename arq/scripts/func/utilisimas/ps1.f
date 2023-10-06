# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de ps1 - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

enable_before()
{
PS1="${OLD_PS1}"
}


enable_default()
{
PS1_TYPE="DEFAULT"

OLD_PS1="${PS1}"
#PS1="\[${yellow}\]${INSIGNIA}>\[$(textreset)\]

if [ "${GIT_ENABLED}" == "0" ] ; then
# echo "Habilitando PS1 con Git"
PS1='${yellow}$(hostname):${blue}$(final_directorio)/$(carpeta_actual)$(manage_git_ps1)>$(magic_textreset)'

else
PS1='${yellow}$(hostname):${blue}$(final_directorio)/$(carpeta_actual)>$(magic_textreset)'
fi
}

# ----------------------------------------------

enable_insignia()
{
INSIGNIA_PASSED="${1}"

if [ "${INSIGNIA_PASSED}" == "" ] ; then
INSIGNIA_USED="brqx"
else
INSIGNIA_USED="${INSIGNIA_PASSED}"
fi

OLD_PS1="${PS1}"
#PS1="\[${yellow}\]${INSIGNIA}>\[$(textreset)\]

if [ "${GIT_ENABLED}" == "0" ] ; then
PS1="${yellow}${INSIGNIA_USED}$(manage_git_ps1)>$(textreset)"
else
PS1="${yellow}${INSIGNIA_USED}>$(textreset)"
fi

}
# ----------------------------------------------

enable_largo()
{
PS1_TYPE="LARGO"

OLD_PS1="${PS1}"
#PS1="\[${yellow}\]${INSIGNIA}>\[$(textreset)\]

if [ "${GIT_ENABLED}" == "0" ] ; then
# echo "Habilitando PS1 con Git"
PS1='${yellow}$(hostname):${blue}${PWD}$(manage_git_ps1)>$(magic_textreset)'

else
PS1='${yellow}$(hostname):${blue}${PWD}>$(magic_textreset)'
fi
}

# ----------------------------------------------


disable_insignia()
{
if [ "${OLD_PS1}" != "" ] ;  then
PS1="${OLD_PS1}"
fi
}
