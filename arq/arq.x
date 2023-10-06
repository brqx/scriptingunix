# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.2
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplos con Utilisimas : Capitulo 001 -030
# ==============================================#

# ----------------------------------------------
# Nota : Se generan variable ARQ en el Capitulo 018 - Parte 03
# Nota : Se establece en este archivo la version de la arquitectura
# Nota : Aparecen los conceptos Full y Mini en la arquitectura en Capitulo 024
# Nota : Aparecen los productos en las listas en Capitulo 025
# Nota : Aparecen SUB_CURSO en Capitulo 027
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

VER_ARQ="0.2.0"
SUB_CURSO="/curso/v02/a/a30"

ARQ=${HOME}${SUB_CURSO}/arq/
ARQ_FUL=${HOME}${SUB_CURSO}/arq/

#- Desaparece ya la verson Min - eran ejemplos de comprension
#ARQ_MIN=${HOME}${SUB_CURSO}_min/arq/

ARQ_S=${ARQ_FUL}scripts/
ARQ_L=${ARQ_FUL}listas/

ARQ_LB=${ARQ_L}base/
ARQ_LG=${ARQ_L}general/
ARQ_LP=${ARQ_L}productos/


# Cargamos la lista 

. ${ARQ_LB}general.l
. ${ARQ_LB}productos.l

# Cargamos los scripts (los cargan las listas)

# Establecemos el size del texto deseado para la salida
# set_text_length 15

set_text_length 30

echo "-----------------------------------------------------"
echo "Arquitectura Scripting Unix ${green}${VER_ARQ} ${orange} [${FECHA}]"${black}
echo "--==--==--==--==--==--==--==--==--==--==--==--==--==-"
formateo "+ Funcion info (alias i)" "Informacion de la Arquitectura"
formateo "+ Alias A" "Carga de la Arquitectura      "

echo "-----------------------------------------------------"


export ARQ ARQ_L

# ----------------------------------------------
