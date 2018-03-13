# nano for gitbash
alias nano='winpty nano'
alias npp=notepad++

# Converts git bash style windows path to actual windows path and opens explorer window there
epwd(){
   explorer $(pwd -W | tr '/' '\\')
}

# Wrapper around gl to take gitlab URL and cd directly to local gl path
glu(){
   gl $(echo $1 | cut -c 31- | tr '/' ' ')
}

# Wrapper around gl to take current gl path and convert to gitlab url
ugl(){
   'C:/Program Files/Nightly/firefox.exe' $(pwd | sed s#$(echo ~)/src#https:/#g)
}
