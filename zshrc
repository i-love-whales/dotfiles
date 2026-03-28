typeset -U path

path=(
/Users/dimaoleynik/.pyenv/shims
/Users/dimaoleynik/go/bin
/opt/local/libexec/gnubin
/opt/local/bin
/Users/dimaoleynik/.local/share/bob/nvim-bin
/opt/homebrew/bin
/opt/homebrew/sbin
/opt/homebrew/Cellar/starship/1.24.0/bin
/usr/local/bin
/usr/local/go/bin
/Users/dimaoleynik/.local/bin
/opt/pmk/env/global/bin
/opt/homebrew/opt/postgresql@14/bin
/opt/homebrew/opt/llvm/bin
/opt/local/sbin
/Applications/kitty.app/Contents/MacOS
/Applications/LibreOffice.app/Contents/MacOS
/Applications/Visual Studio Code.app/Contents/Resources/app/bin
/usr/bin
/bin
/usr/sbin
/sbin
/Users/dimaoleynik/.config/sowon
$path
)

alias tmuxs="$HOME/.config/tmux/custom_scripts/sessionizer.bash"
alias sv="source /opt/custom/sovenv.fish"
alias scim="sc-im"

# git
alias gs="git status"
alias gl="git log"
alias glo="git log --oneline"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gg="git checkout"
alias ga="git add"
alias gaa="git add ."
alias gp="git push origin"
alias gpm="git push origin master"

# system
alias c="clear"
alias v="nvim"
alias sf="source ~/.config/fish/config.fish"
alias d="deactivate"
alias t="tmux"
alias ta="tmux a"
alias th='tmux new-session -c "$HOME" -s "$HOME (home)"'
alias o="open"

export dwl=~/Downloads
export EDITOR=nvim

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

. "$HOME/.local/bin/env"

alias c="clear"
