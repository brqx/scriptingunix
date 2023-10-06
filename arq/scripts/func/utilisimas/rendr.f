# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de ren - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

rendr_i="Renombra partes de los ficheros y carpetas (recursivo)"

rendr()
{
VER="0.0.0.3"
rendr_u="rendr cadena1 cadena2"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
STL_01_LEN=58
STL_02_LEN=28

formateo3 "${rendr_i}" "${rendr_u}" "${VER}"

else
TMP_FILE="${TMPDIR}utilisimas_tmp_file.dat"

ACTUAL="${1}"
CAMBIO="${2}"

# Quitamos los espacios y ponemos arrobas
# Ojo si el fichero tiene arroba
# find . -type f -name "*${ACTUAL}*" | tr " " "@" > ${TMP_FILE}

# Debemos buscar tambien carpetas aqui
find . -type f  | grep "${ACTUAL}" | tr " " "@" > ${TMP_FILE}

for i in $( cat ${TMP_FILE} ) ; do
CLEAN_LINE="$(echo $i | tr '@' ' ')"

RUTA_COMPLETA="${CLEAN_LINE}"
FICHERO="$(basename ${CLEAN_LINE})"
RUTA="$(dirname ${CLEAN_LINE})"

# Una vez ha cambiado la ruta un archivo, ya los demas usaran la nueva

__rendr_ruta_cambio_carpetas 

done

fi
}

# ----------------------------------------------

# Cambia ficheros y carpetas
__rendr_ruta_cambio_carpetas()
{

# Cambiar ruta - fichero

# Si existe ruta_completa
#   Actuar  
# sino
#   Si ya se ha cambiado la carpeta
#     Comprobar que corresponde a la ruta 
#     Si corresponde
#       Cambiar solo el fichero

# echo "entraando para cambiar carpetas"

# Si existe ya la ruta nueva
# Pero puede haber varias nuevas

stat "${RUTA_COMPLETA}" &> /dev/null
SALIDA_stat=$?

if [ "${SALIDA_stat}" == "0" ] ; then

__rendr__cambio_carpetas_y_ficheros
else 
  __rendr_check_carpeta_cambiada
  if [ "${CHECK_CARPETA_CAMBIADA}" == "0" ] ; then
     __rendr_cambio_solo_ficheros
  fi
fi
 

}
