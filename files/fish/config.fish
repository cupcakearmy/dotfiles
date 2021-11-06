set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -x PIPENV_VENV_IN_PROJECT true

export GOPATH="$HOME/.go"
if type -q $program
  export GOROOT=(brew --prefix go)"/libexec"
end
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin:$HOME/.cargo/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Desktop/google-cloud-sdk/path.fish.inc' ]; . '$HOME/Desktop/google-cloud-sdk/path.fish.inc'; end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true
