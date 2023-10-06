# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de ren - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

__rendr_check_carpeta_cambiada()
{
# Aqui suponemos que se ha movido/cambiado la carpeta
# Newruta ya debe existir

NEW_RUTA=$( echo "${RUTA}"    | sed "s/${ACTUAL}/${CAMBIO}/g"  )
NEW_FILE=$( echo "${FICHERO}" | sed "s/${ACTUAL}/${CAMBIO}/g"  )

# Cuando haga el cambio del fichero ya ha creado al ruta nueva
RUTA_FICHERO="${NEW_RUTA}/${FICHERO}"
RUTA_NEW_FILE="${NEW_RUTA}/${NEW_FILE}"

if [ -d "${NEW_RUTA}" -a -f "${RUTA_FICHERO}" ] ; then 
# Si no existe NEW_RUTA no hacemo nada
# Si no existe el fichero en la ruta tampoco

# echo "Cambiar Fichero : $FICHERO"

___rendr_move_fichero

fi

}


# ----------------------------------------------

# Cambia ficheros y carpetas
__rendr__cambio_carpetas_y_ficheros()
{

NEW_RUTA=$( echo "${RUTA}"    | sed "s/${ACTUAL}/${CAMBIO}/g"  )
NEW_FILE=$( echo "${FICHERO}" | sed "s/${ACTUAL}/${CAMBIO}/g"  )

# Cuando haga el cambio del fichero ya ha creado al ruta nueva
RUTA_FICHERO="${NEW_RUTA}/${FICHERO}"
RUTA_NEW_FILE="${NEW_RUTA}/${NEW_FILE}"

# echo "Cambiando ruta ${RUTA_FICHERO} ${RUTA_NEW_FILE}"


if [ -d "${NEW_RUTA}" ] ; then 
# echo "Existe ruta. No hacemos nada con la ruta"
# AAA="a"
# -- Accion con el fichero
___rendr_move_fichero

else
# echo "No existe la ruta - Se crea : ${NEW_RUTA}"
mv ${RUTA} ${NEW_RUTA} 2> /dev/null
OUT_mv=$?

if [ "${OUT_mv}" == "0" ] ; then
# -- Accion con el fichero
___rendr_move_fichero
fi

fi
}

___rendr_move_fichero()
{
# echo "Moviendo ${RUTA_FICHERO} ${RUTA_NEW_FILE}"

mv ${RUTA_FICHERO} ${RUTA_NEW_FILE} 2> /dev/null
OUT_FILE_mv=$?

if [ "${OUT_FILE_mv}" != "0" ] ; then
formateo2 "error al mover ruta" "${RUTA_FICHERO}"

fi
    
}
