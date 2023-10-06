# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Gestion de PS1 - Anagrama - Capitulo 029
# ==============================================
# Nota : Se actualiza anagrama en el Capitulo 019
# Nota : Se moejora anagrama en Capitulo 022b
# Nota : Aparecen INSIGNIA Y ANAGRAMA en capitulo 029
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

hostname=`hostname`

INSIGNIA="brqx"
ANAGRAMA="curso"

# ----------------------------------------------

# Habilitamos el PS1 por defecto del curso
# Aun no la conoce
# enable_default
#- Alias entorno Solaris - Hp-Ux - Cygwin - MacOS

if [ "${GIT_ENABLED}" == "0" ] ; then
PS1='${yellow}$(hostname):${blue}$(final_directorio)/$(carpeta_actual)$(manage_git_ps1)>$(magic_textreset)'
else
PS1='${yellow}$(hostname):${blue}$(final_directorio)/$(carpeta_actual)>$(magic_textreset)'
fi


# Ps1 por defecto
PS1_TYPE="DEFAULT"

# manage_git
# ----------------------------------------------

