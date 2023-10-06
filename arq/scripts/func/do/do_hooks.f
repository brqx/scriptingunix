# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
#
# AWS Hooks for functions - Capitulo 029
#
# __region    : Define CURRENT REGION variables 
# __regions   : Define REGIONS variables 
#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=


#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Define regions variables
__regions_digital_ocean()
{
if    [ "${REGIONS}" == "" ] ; then
REGIONS=$(doctl compute region list | tr -s " " | cut -d " " -f1 | grep -v "Slug" | tr "\n" " " )
fi

}

# ----------------------------------------------

# Obtenemos la region y su estado - Casos 
# ams2 Amsterdam 2 false
# ams3 Amsterdam 3 true
get_region_status_long()
{
LINE="$*"
if      [[ "$LINE" == *"false"* ]]; then 
REGION=${LINE%%false}
STATUS="false"
elif    [[ "$LINE" == *"true"* ]]; then 
REGION=${LINE%%true}
STATUS="true "
else
REGION="${LINE}"
STATUS=""
fi

}

# ----------------------------------------------


get_region_status_short()
{
REGION=$1
LINE="$(doctl compute region list | grep ${REGION})"
if      [[ "$LINE" == *"false"* ]]; then 
STATUS="false"
else 
STATUS="true_"
fi
}


#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

