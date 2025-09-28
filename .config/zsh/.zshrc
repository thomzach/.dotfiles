export ZDOTDIR=$HOME/.config/zsh

source "$ZDOTDIR/zsh-functions"
source "$ZDOTDIR/zsh-alias"
source "$ZDOTDIR/zsh-exports"
source "$ZDOTDIR/zsh-prompt"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-history-substring-search"

set -o emacs
## History file configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

LS_COLORS="ow=01;36;40" && export LS_COLORS
autoload -Uz compinit
autoload -Uz colors && colors
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'



## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/zach/.dart-cli-completion/zsh-config.zsh ]] && . /home/zach/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

