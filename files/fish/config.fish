set -g fish_user_paths /usr/local/sbin $fish_user_paths

set -x PIPENV_VENV_IN_PROJECT true
set -x POETRY_VIRTUALENVS_IN_PROJECT true

if [ -x /opt/homebrew/bin/brew ]
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

export GOPATH="$HOME/.go"
if type -q brew
    export GOROOT=(brew --prefix go)"/libexec"
end
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Desktop/google-cloud-sdk/path.fish.inc' ]
    . '$HOME/Desktop/google-cloud-sdk/path.fish.inc'
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# Rust
set -gx PATH "$HOME/.cargo/bin" $PATH

# Node
if type -q fnm
    fnm env --use-on-cd | source
end

if type -q direnv
    direnv hook fish | source
end

# Theme
if type -q oh-my-posh
    oh-my-posh init fish --config ~/.config/omp/main.omp.yaml | source
end

# rye
set -Ua fish_user_paths "$HOME/.rye/shims"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
