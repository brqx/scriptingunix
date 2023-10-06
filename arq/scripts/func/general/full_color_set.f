# ----------------------------------------------
# Arquitectura Scripting Unix Brqx 2023
# Version Curso 0.0.1
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Gestion de colores - Funciones SET - Capitulo 029
# ==============================================
# Nota : Se genera full_color_set en el Capitulo 019
# ----------------------------------------------


# red - green - yellow - blue - magent - black
# cyan - white

# Set main color

setblue(){    
  echo -n "$blue" 
  main_console_color="blue"
}

setred(){    
  echo -n "$red" 
  main_console_color="red"
}

setgreen(){    
  echo -n "$green" 
  main_console_color="green"
}

setyellow(){    
  echo -n "$yellow" 
  main_console_color="yellow"
}

setorange(){    
  echo -n "$orange" 
  main_console_color="orange"
}

setmagent(){    
  echo -n "$magent" 
  main_console_color="magent"
}

setcyan(){    
  echo -n "$cyan" 
  main_console_color="cyan"
}

setwhite(){    
  echo -n "$white" 
  main_console_color="white"
}

setblack(){    
  echo -n "$black" 
  main_console_color="black"
}

#Enable puntual color
#Allow to write puntual color without to change terminal

enableblue(){    
  echo -n "$blue" 
}

enablered(){    
  echo -n "$red" 
}

enablegreen(){    
  echo -n "$green" 
}

enableyellow(){    
  echo -n "$yellow" 
}

enableorange(){    
  echo -n "$yellow" 
}

enablemagent(){    
  echo -n "$magent" 
}

enablecyan(){    
  echo -n "$cyan" 
}

enablewhite(){    
  echo -n "$white" 
}

enableblack(){    
  echo -n "$black" 
}


