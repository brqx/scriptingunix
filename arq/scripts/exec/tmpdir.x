# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Temporales en la arquitectura - Capitulo 029
# ==============================================
# Nota : Se genera tmpdir en el Capitulo 027


# Definicion de ruta temporal - Compatibilidad MACOS

if [ "${TMPDIR}" == "" ] ; then
#Ruta para Linux
TMPDIR=/tmp/
fi


# ----------------------------------------------
