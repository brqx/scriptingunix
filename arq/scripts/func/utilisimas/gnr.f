# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de grep - Capitulo 029
# ==============================================
# Nota : Se genera g en el Capitulo 029
# ----------------------------------------------

# Variable externa de gnr
gnr_i="Busca cadenas dentro de los archivos. Basada en exec (case - no recursivo)"

gnr()
{
VER="0.0.0.2"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

CONTENIDO=$1 

if [ "${CONTENIDO}" = "-?" ] ;  then
formateo2 "gnr" "texto_en_archivo"

else

find . -maxdepth 1 -mindepth 1 -type f | xargs grep "${CONTENIDO}" | cut -d ":" -f1

fi
}

# ----------------------------------------------

gi()
{
VER="0.0.0.2"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

CONTENIDO=$1 

if [ "${CONTENIDO}" = "-?" ] ;  then
formateo2 "gi" "texto_en_archivo (distingue mayusculas/minusculas)"

else

find . -type f -exec grep -li ${CONTENIDO} {} \;  2> /dev/null


fi
}
