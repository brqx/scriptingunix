# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Capitulo 029
# ==============================================
# Nota: Ajuste de productos en Capitulo 022
# Nota: Formateo3 nace en Capitulo 023

info()
{
# Desactivamos para que coja la version de la arquitectura
#VER="0.0.0.3"
PRODUCT="General"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias  [$VER] "
echo "=========================================================="
echo "Format  : i | info                                       "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Convertimos el producto a mayusculas
PRODUCT=$(echo $1 | tr "[a-z]" "[A-Z]" )

if [ "${PRODUCT}" == "" ]; then
# ----------------------------------------------


# Establecemos el size del texto deseado para la salida
STL_01_LEN=18
STL_02_LEN=37

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Productos  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

formateo3 "generales"  "$(alias igen)" "${igen_i}"

formateo3 "utilisimas" "$(alias iu)"   "${iu_i}"

formateo3 "git"        "$(alias igit)" "${igit_i}"

formateo3 "tf"         "$(alias itf)"  "${itf_i}"

formateo3 "k8s"        "$(alias ik8s)" "${ik8s_i}"

formateo3 "aws"        "$(alias iaws)" "${iaws_i}"

formateo3 "azure"      "$(alias iaz)"  "${iaz_i}"

formateo3 "google"     "$(alias igc)"  "${igc_i}"

formateo3 "digital ocean"  "$(alias ido)" "${ido_i}"

echo "--==--==--==--==--==--==--==--==--==--==--"

else
# ----------------------------------------------
#-EL_01 Se pasa producto - Aceptamos mayuscula
case ${PRODUCT} in 
 "GIT")
   igit ;;
 "TF")
   itf ;;
 "K8S")
   ik8s ;;
 "AWS")
   iaws ;;
 "AZURE")
   iaz ;;
 "GOOGLE")
   igc ;;
 "DO")
   ido ;;
 "UTILISIMAS")
   iu ;;
 "GENERAL")
   igen ;;
 *)
  # Si se pasa algo raro lo ignoramos - cargamos las generales
   info_gen 
  ;;   

esac 


#- FI_01 - No se pasa producto
# ----------------------------------------------
fi


fi
}

#-------------------------------------------------------------------

