# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

# Variable externa de ren_i
ren_i="Renombra partes de los ficheros"

ren()
{
VER="0.0.0.2"
ren_u="ren cadena1 cadena2"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo3 "${ren_i}" "${ren_u}" "${VER}"

else
TMP_FILE="${TMPDIR}utilisimas_tmp_file.dat"

ACTUAL="${1}"
CAMBIO="${2}"

if [ "${ACTUAL}" != "" -a "${CAMBIO}" != ""  ] ; then


# Quitamos los espacios y ponemos arrobas
# Ojo si el fichero tiene arroba
find . -maxdepth 1 -mindepth 1  -type f -name "*${ACTUAL}*" | cut -d "/" -f2 | tr " " "@" > ${TMP_FILE}

for i in $( cat ${TMP_FILE} ) ; do
CLEAN_LINE="$(echo $i | tr '@' ' ')"

FICHERO="${CLEAN_LINE}"
# echo "Cambiando ${FICHERO}"
__ref 

done

fi

fi
}

# ----------------------------------------------

__ref()
{

stat "${FICHERO}" &> /dev/null
SALIDA_stat=$?

if [ "${SALIDA_stat}" == "0" ] ; then
#Esta basado en sed

NEW_FILE=$( echo "${FICHERO}" | sed "s/${ACTUAL}/${CAMBIO}/g"  )

mv ${FICHERO} ${NEW_FILE} 2> /dev/null
OUTPUT_mv=$?
if [ "${OUTPUT_mv}" != "0" ] ; then 
formateo2 "Error permisos" ${FICHERO}
fi

else
MOTIVO_FUNCION="No se puede acceder al archivo"
formateo3 "ren" "${FICHERO}" "${MOTIVO_FUNCION}"

fi    

}

