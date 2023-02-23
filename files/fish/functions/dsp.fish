function dsp --wraps='docker system prune -a --volumes' --description 'alias dsp docker system prune -a --volumes'
  docker system prune -a --volumes $argv; 
end
