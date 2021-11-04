# Defined in - @ line 1
function dpa --wraps='docker system prune -af --volumes' --description 'alias dpa docker system prune -af --volumes'
  docker system prune -af --volumes $argv;
end
