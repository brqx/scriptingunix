# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Ejemplo de cut - Gestion de URL - Capitulo 029
# ==============================================
# Nota : Se genera cdret en el Capitulo 029
# ----------------------------------------------

# Variable externa de cdret_i
cdret_i="A-Vuelve N niveles pero guarda como retorno la ruta inicial"

cdret()
{
VER="0.0.0.2"
# Variable solo interna - La queremos externa
##"${1}" == "-?" -o

if [ "${1}" == "-?" ] ; then
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="
echo "${cdret_i} [${VER}]"
echo "=========================================================="
echo "Format  : cdret [ NUM ]                                       "
echo "==--==--==--==--==--==--==--==--==--==--==--==--==--==--=="

else

NIVELES=$1

if [ "${NIVELES}" == "" ] ;  then
NIVELES=1
fi

retcd ${NIVELES}

ll

fi
}

# ----------------------------------------------

#-Retorno generico
retcd()
{
IS_retcd="Vuelve N niveles pero guarda como retorno la ruta inicial"
INFO_SCRIPT=${IS_retcd}

NIVELES=$1

if [ "${NIVELES}" == "" ] ;  then
NIVELES=1
fi

if [ "${NIVELES}" = "-1" ] ;  then
formateo2 ·retcd· "Niveles de vuelta"

else
#-------------------------------------------------------------------
#- Inicio de la funcion
#-------------------------------------------------------------------

#- Es la ruta a la que vamos a regresar si ejecutamos "cd -"
#- Variable OLDPWD
RUTA_ACTUAL=$PWD

CONT=0

while [ "${CONT}" != "${NIVELES}" ]
do
cd ..
let CONT++
done

OLDPWD=${RUTA_ACTUAL}

#-------------------------------------------------------------------
#- Fin de la funcion
#-------------------------------------------------------------------
fi
}

# ----------------------------------------------

cdone_i="Vuelve 1 nivel"

cdone()
{

NIVELES=$1

if [ "${NIVELES}" = "-?" ] ;  then
formateo2 "cdone" "Niveles de vuelta"

else

#- Es la ruta a la que vamos a regresar si ejecutamos "cd -"
#- Variable OLDPWD

cd ..

# En principio esto ya lo hace CD
#check_short_paths

ll

fi

}