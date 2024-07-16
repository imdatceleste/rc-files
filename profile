# vim: ft=zsh
export LANG=en_US.UTF-8
alias l='$(whence -p lsd) -lAFh $@'
alias vi='nvim'
export EDITOR="nvim"
export NVIM_TUI_ENABLE_TRUE_COLOR=1
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
export PATH=/Users/ics/.local/bin:$PATH
source ~/.github.rc
export PRIVATE_TOKEN=glpat-o1UVcKSMicFCGWzNwgKA
