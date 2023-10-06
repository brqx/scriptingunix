# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

# Variable externa de rep_i
rep_i="Reemplaza contenido de archivos"

repr()
{
VER="0.0.0.2"
rep_u="rep cadena1 cadena2"

##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
formateo3 "${rep_i}" "${rep_u}" "${VER}"

else
TMP_FILE="${TMPDIR}utilisimas_tmp_file.dat"

ACTUAL="${1}"
CAMBIO="${2}"

# Quitamos los espacios y ponemos arrobas
# Listamos los ficheros que pueden tener el contenido
# En principio esto es recursivo
g ${ACTUAL} | tr " " "@" > ${TMP_FILE}

for i in $( cat ${TMP_FILE} ) ; do
CLEAN_LINE="$(echo $i | tr '@' ' ')"

FICHERO="${CLEAN_LINE}"
# echo "Cambiando $FICHERO"
sed -i "s/${ACTUAL}/${CAMBIO}/g"  ${FICHERO} 


done

fi
}


