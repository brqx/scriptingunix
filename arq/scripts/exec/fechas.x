# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Fechas en la arquitectura - Capitulo 029
# ==============================================
# Nota : Se genera fechas en el Capitulo 018 - Parte 02
# Nota : Ajuste de Version en Capitulo 022
# ----------------------------------------------

# Fecha de la Ejecuccion de la Arquitectura - Capituo 027
# file_date nace en el capitulo 027


FECHA="$(date +'%Y' )_$( date +'%m' )_$( date +'%d' )"

# Devuelve Temporada mes y dia del fichero
file_date()
{
FICHERO=${1}
if [ "${FICHERO}" == ""  ] ; then
# Si no se pasa ninguno usara el temporal por defecto
FICHERO="${TMP_FILE}"
fi
# Solo ejecutamos la orden si el fichero existe
if [ -f "${FICHERO}" ] ; then
date -r "${FICHERO}" +'%Y_%m_%d'
fi
}

# ----------------------------------------------
