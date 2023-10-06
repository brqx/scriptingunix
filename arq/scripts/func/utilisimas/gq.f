# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de grep - Capitulo 029
# ==============================================
# Nota : Se genera g en el Capitulo 029
# ----------------------------------------------

# Variable externa de gq_i
gq_i="Busca cadenas dentro de los archivos. Basada en exec (case)"

gq()
{
VER="0.0.0.2"
gq_u="gq texto_en_archivo"
##"${1}" == "-?" -o

CONTENIDO=$1 

if [ "${CONTENIDO}" = "-?" ] ;  then
formateo2 "gq" "texto_en_archivo"

else

find . -type f -exec grep  ${CONTENIDO} {} \;  2> /dev/null


fi
}

# ----------------------------------------------

gqi()
{
VER="0.0.0.2"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

CONTENIDO=$1 

if [ "${CONTENIDO}" = "-?" ] ;  then
formateo2 "gqi" "texto_en_archivo (distingue mayusculas/minusculas)"

else

find . -type f -exec grep -i ${CONTENIDO} {} \;  2> /dev/null


fi
}
