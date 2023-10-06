# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Informacion de las funciones - Kubernetes - Capitulo 029
# ==============================================

info_k8s()
{
VER="0.0.0.2"
PRODUCT="k8s"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Informacion Arquitectura ${PRODUCT} : funciones - alias [$VER] "
echo "=========================================================="
echo "Format  : ik8s | k8si | info_k8s | k8s_info               "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

# Establecemos el size del texto deseado para la salida
set_text_length 4
stl_02 20

# Por si usamos parametros info alias ...
# PAR1=$1

# De momento no tenemos funciones

echo "--==--==--==--==--==--==--==--==--==--==--"
echo "${blue} Listado de Funciones de ${PRODUCT}  (${VER}) ${orange} [${FECHA}] "$(textreset)
echo "------------------------------------------"

# echo "${green}Funciones:"${black}
# echo "...."
# formateo "tf_pendiente"        "${tf_pendiente_i}" 

echo "${blue}Alias:"${black}
echo "...."

STL_01_LEN=4
STL_02_LEN=37


#--------------  K 8 S   ------------------

formateo3         "k" "$(alias k)"  "${k_i}"

#------------- A P P L Y   ------------------

formateo3         "ka" "$(alias ka)" "${ka_i}"

formateo3         "kae" "$(alias kae)" "${kae_i}"

#------------- D E L E T E  ------------------

formateo3         "kd"  "$(alias kd)" "${kd_i}"

#------------- G E T   ------------------


# Kubenetes - Get nodes

formateo3 "kgn"  "$(alias kgn)" "${kgn_i}"

# Kubenetes - Get all

formateo3 "kga"  "$(alias kga)" "${kga_i}"

# Kubenetes - Get events

formateo3 "kge"  "$(alias kge)" "${kge_i}"

# Kubenetes - Get Pods

formateo3 "kgp"  "$(alias kgp)" "${kgp_i}"

# Kubenetes - Get Services

formateo3 "kgs"  "$(alias kgs)" "${kgs_i}"

# Kubenetes - Get Deployments

formateo3 "kgd"  "$(alias kgd)" "${kgd_i}"

# Kubenetes - Get Replicaset

formateo3 "kgr"  "$(alias kgr)" "${kgr_i}"


# Kubenetes - Get Ingress

formateo3 "kgi"  "$(alias kgi)" "${kgi_i}"


echo "--==--==--==--==--==--==--==--==--==--==--"


fi
}

#-------------------------------------------------------------------

