# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera f3 en el Capitulo 029
# ----------------------------------------------

# Variable externa de f_i
f3_i="Filtra por extension y hace dos grep adicionales a la salida"

f3()
{
f3_u="f3 extension [filtro1] [filtro2]"

# Ademas es inteligente y entiende las entradas

if [ "${1}" == "-?" ] ; then
formateo3 "${f2_i}" "${f3_u}" "${VER}"
else

EXTENSION=$1 
FILTRO_01=$2    
FILTRO_02=$3    

if [ "${EXTENSION}" != "" ] ;  then


if [ "${FILTRO_01}" == "" ] ; then
f ${EXTENSION}
elif [ "${FILTRO_02}" == "" ] ; then
f2 ${EXTENSION} ${FILTRO_01}
else
# Cuerpo de f3

f ${EXTENSION} | grep ${FILTRO_01} | grep ${FILTRO_02}  

# Fin cuerpo F3
fi

fi

fi
}


# ----------------------------------------------

f4_i="Filtra por extension y hace tres grep adicionales a la salida"

f4()
{
# Uso de la funcion
f4_u="f4 extension filtro1 filtro2 filtro3"

if [ "${1}" == "-?" ] ; then
formateo3 "${f2_i}" "${f4_u}" "${VER}"
else
EXTENSION=$1 
FILTRO_01=$2    
FILTRO_02=$3    
FILTRO_03=$4    

if [ "${EXTENSION}" != "" -a "${FILTRO_01}" != "" -a "${FILTRO_02}" != "" -a "${FILTRO_03}" != "" ] ;  then

f ${EXTENSION} | grep ${FILTRO_01} | grep ${FILTRO_02} | grep ${FILTRO_03}   
fi


fi
}

# ----------------------------------------------

f5()
{
# Uso de la funcion
f5_u="f5 extension filtro1 filtro2 filtro3 filtro4"

if [ "${1}" == "-?" ] ; then
formateo3 "${f5_i}" "${f5_u}" "${VER}"
else
EXTENSION=$1 
FILTRO_01=$2    
FILTRO_02=$3    
FILTRO_03=$4    
FILTRO_04=$5    

if [ "${EXTENSION}" != "" -a "${FILTRO_01}" != "" -a "${FILTRO_02}" != "" -a "${FILTRO_03}" != "" -a "${FILTRO_04}" != "" ] ;  then

f ${EXTENSION} | grep ${FILTRO_01} | grep ${FILTRO_02} | grep ${FILTRO_03} | grep ${FILTRO_04}   

fi


fi
}


# ----------------------------------------------
