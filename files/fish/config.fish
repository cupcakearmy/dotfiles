set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -x PIPENV_VENV_IN_PROJECT true

if [ -x /opt/homebrew/bin/brew ]
	eval "$(/opt/homebrew/bin/brew shellenv)"
end

export GOPATH="$HOME/.go"
if type -q brew
  export GOROOT=(brew --prefix go)"/libexec"
end
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin:$HOME/.cargo/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/Desktop/google-cloud-sdk/path.fish.inc' ]; . '$HOME/Desktop/google-cloud-sdk/path.fish.inc'; end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
