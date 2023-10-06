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


manage_ps1()
{
VER="0.0.0.2"
manage_ps1_u="manage_ps1 |ipath [DEFAULT | ANAGRAMA | INSIGNIA]"

if [ "${1}" == "-?" ] ; then
formateo3 "${manage_ps1_i}" "${manage_ps1_u}" "${VER}"
else

PS1_PASS_TYPE="${1}"

if [ "${PS1_PASS_TYPE}" == "" ] ; then
echo "-----------------------------------------------------"
echo "${orange} Elige el tipo de Ps1 (Prompt) "$(textreset)
echo "--==--==--==--==--==--==--==--==--==--==--==--==--==-"
STL_01_LEN=8
STL_02_LEN=48

formateo2 "${yellow}*" "[1] Prompt por defecto"$(textreset)
formateo2 "${blue}*"   "[2] Prompt de la insignia (se desactiva no[insignia])"$(textreset)
formateo2 "${green}*"  "[3] Prompt del anagrama (se desactiva no[anagrama])"$(textreset)
formateo2 "${red}*"    "[4] Prompt largo del sistema"$(textreset)
echo "-----------------------------------------------------"
read -t 10 PS1_PASS_TYPE &> /dev/null

# echo "Elegido PS1_PASS_TYPE"
case ${PS1_PASS_TYPE} in
 "1")
   enable_default 
  ;;
 "3")
   enable_anagrama
  ;;
 "2")
   enable_insignia
  ;;
 "4")
   enable_largo
  ;;

esac 

else

case ${PS1_TYPE} in
 "DEFAULT")
   enable_default 
  ;;
 "ANAGRAMA")
   enable_anagrama
  ;;
 "INSIGNIA")
   enable_insignia
  ;;
 "LARGO")
   enable_insignia
  ;;
esac 

fi

# Evitamos efectos laterales
PS1_PASS_TYPE=""
fi
}

# ----------------------------------------------

__enable_selected_ps1()
{
case ${PS1_TYPE} in
 "DEFAULT")
   enable_default 
  ;;
 "ANAGRAMA")
   enable_anagrama
  ;;
 "INSIGNIA")
   enable_insignia
  ;;
 "LARGO")
   enable_insignia
  ;;
esac 

}
