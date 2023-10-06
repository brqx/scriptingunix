# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Git - Capitulo 029
# ==============================================

info_git()
{
# Desactivamos para que coja la version de la arquitectura
VER="0.0.0.1"
PRODUCT="git"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : igit | giti | info_git | git_info               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Establecemos el size del texto deseado para la salida
set_text_length 27

# Por si usamos parametros info alias ...
# PAR1=$1

# Condicion

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones de ${PRODUCT}  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

echo "${green}Funciones:"${black}
echo "...."
formateo "git_clone"           "${git_clone_i}" 
formateo "git_seturl"          "${git_seturl_i}" 
formateo "git_checkout"        "${git_checkout_i}" 
formateo "git_commit"          "${git_commit_i}" 
formateo "git_push_set_origin" "${git_push_set_origin_i}" 

echo "${blue}Alias:"${black}
echo "...."

STL_01_LEN=10
STL_02_LEN=30

formateo3 "gitcl"  "$(alias gitcl)"   "${gitcl_i}" 

formateo3 "gitk"     "$(alias gitk)"    "${gitk_i}"

formateo3 "gita"   "$(alias gita)"    "${gita_i}"

formateo3 "gitpush"  "$(alias gitpush)" "${gitpush_i}"


# Git Ramas

formateo3 "gitg_rama"  "$(alias gitg_rama)" "${gitg_rama_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

