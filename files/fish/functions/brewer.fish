function brewer --wraps='brew update && brew upgrade && brew cleanup' --description 'alias brewer brew update && brew upgrade && brew cleanup'
  brew update && brew upgrade && brew cleanup $argv; 
end
