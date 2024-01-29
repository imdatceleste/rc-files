# vim: ft=zsh
export LANG=en_US.UTF-8
# alias l='$(whence -p ls) -lAFhvG $@'
alias l='$(whence -p lsd) -lAFh $@'
# alias python='$(whence -p python3) $@'
alias vi='nvim'
export EDITOR="nvim"
export NVIM_TUI_ENABLE_TRUE_COLOR=1
eval "$(zoxide init zsh)"
# source /Users/iso/.zplug/repos/robbyrussell/oh-my-zsh/oh-my-zsh.sh
chuck_cow
eval "$(atuin init zsh)"
export PATH=/Users/ics/.local/bin:$PATH
