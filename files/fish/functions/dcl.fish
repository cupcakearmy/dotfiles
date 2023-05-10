function dcl --wraps='docker compose logs -f --tail 20' --description 'alias dcl=docker compose logs -f --tail 20'
  docker compose logs -f --tail 20 $argv
        
end
