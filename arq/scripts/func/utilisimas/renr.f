# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

# Variable externa de ren_i
renr_i="Renombra partes de los ficheros (recursivo)"

renr()
{
VER="0.0.0.2"
renr_u="ren cadena1 cadena2 (recursivo)"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo3 "${renr_i}" "${renr_u}" "${VER}"

else
TMP_FILE="${TMPDIR}utilisimas_tmp_file.dat"

ACTUAL="${1}"
CAMBIO="${2}"

# Quitamos los espacios y ponemos arrobas
# Ojo si el fichero tiene arroba
find . -type f -name "*${ACTUAL}*" | tr " " "@" > ${TMP_FILE}

for i in $( cat ${TMP_FILE} ) ; do
CLEAN_LINE="$(echo $i | tr '@' ' ')"

RUTA_COMPLETA="${CLEAN_LINE}"
FICHERO="$(basename ${CLEAN_LINE})"
RUTA="$(dirname ${CLEAN_LINE})"

# echo "Cambiando ${FICHERO}"
__ref_ruta 

done

fi
}

# ----------------------------------------------

__ref_ruta()
{


stat "${RUTA_COMPLETA}" &> /dev/null
SALIDA_stat=$?

if [ "${SALIDA_stat}" == "0" ] ; then
#Esta basado en sed

NEW_FILE=$( echo "${FICHERO}" | sed "s/${ACTUAL}/${CAMBIO}/g"  )

RUTA_FICHERO="${RUTA}/${FICHERO}"
RUTA_NEW_FILE="${RUTA}/${NEW_FILE}"

#echo "Cambiando ${RUTA_FICHERO} ${RUTA_NEW_FILE}"

mv ${RUTA_FICHERO} ${RUTA_NEW_FILE} 2> /dev/null
else
MOTIVO_FUNCION="No se puede acceder al archivo"
formateo3 "ren" "${RUTA_FICHERO}" "${MOTIVO_FUNCION}"

fi    

}

