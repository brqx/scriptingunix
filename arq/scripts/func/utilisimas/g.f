# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera g en el Capitulo 029
# ----------------------------------------------

# Variable externa de g_i
g_i="Busca cadenas dentro de los archivos. Basada en exec (case)"

g()
{
VER="0.0.0.2"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

CONTENIDO=$1 

if [ "${CONTENIDO}" = "-?" ] ;  then
formateo2 "g" "texto_en_archivo"

else

find . -type f -exec grep -l ${CONTENIDO} {} \;  2> /dev/null


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
