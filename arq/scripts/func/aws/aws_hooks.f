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
__regions()
{
if    [ "${REGIONS}" == "" ] ; then
REGIONS=$(aws ec2 describe-regions --output text | cut -f4 | tr "\n" " " )
fi

__region

}

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Define current region variables
__region()
{

if    [ "${CURRENT_REGION}" == "" ] ; then
CURRENT_REGION=$(aws configure get region)
fi

if    [ "${REGION}" == "" ] ; then
REGION=${CURRENT_REGION}
fi

}
