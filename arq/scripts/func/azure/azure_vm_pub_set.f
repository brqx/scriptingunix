# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# Estblecimiento de Arquitectura para VM - Capitulo 029
#-------------------------------------------------------------------

az_vm_publisher_set()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establece la el Publisher para encontrar imagenes [$VER]						"
echo "=========================================================="
echo "Format  : az2set_pu | az_vm_publisher_set                 "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

if [ "${1}" == "" ] ; then
VM_PUB="SUSE"
else
VM_PUB=$1
fi

fi
}

#-------------------------------------------------------------------

az_vm_sku_set()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establece el SKU para encontrar imagenes [$VER]						"
echo "=========================================================="
echo "Format  : az2set_pu | az_vm_publisher_set                 "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

if [ "${1}" == "" ] ; then
VM_SKU="gen1"
else
VM_SKU=$1
fi

fi
}


az_vm_arq_set()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establece la Arquitectura Hardware para encontrar imagenes [$VER]						"
echo "=========================================================="
echo "Format  : az2set_hw | az_vm_arq_set                 "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

if [ "${1}" == "" ] ; then
VM_ARQ="x64"
else
VM_ARQ=$1
fi

fi
}

az_vm_arq_setfast()
{
VER="0.0.1"
##"${1}" == "-?" -o


if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "Establece pArametro rapido para encontrar imagenes [$VER]						"
echo "=========================================================="
echo "Format  : az2set_fast | az_vm_arq_setfast                 "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

if [ "${1}" == "" ] ; then
VM_ENABLE_FAST=0
else
VM_ENABLE_FAST=1
fi

fi
}
