# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f en el Capitulo 029
# ----------------------------------------------

final_directorio()
{
VER="0.0.2"
# Evolucionamos anagrama

# Ideal y ultimo

# Depende del sistema - en windows cambia la barra
# Vamos a sacar o bien d22 o bien el primero
PRIMERO=$(echo $PWD | cut -d "/" -f2 )
ACTUAL=$(basename $PWD)

IDEAL=$(echo $PWD | cut -d "/" -f6 )
if [ "${IDEAL}" != "" -a "${ACTUAL}" != "${IDEAL}" ] ; then
# la ruta es ideal
echo "${IDEAL}-.-"
else
echo "${PRIMERO}-.-"
fi

}

# ----------------------------------------------

carpeta_actual()
{
ACTUAL=$(basename $PWD)
echo "${ACTUAL}"
}

# ----------------------------------------------

