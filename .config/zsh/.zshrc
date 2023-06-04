# .zshrc

# source environment variables
. "$HOME/.config/shell/profile"

# save zsh history
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

# enable vi mode
bindkey -v

# decrease shell waiting time for escape sequences
KEYTIMEOUT=1

# shift + tab to go to previous completion in menu
bindkey '^[[Z' reverse-menu-complete

# '&' and '|' won't remove space after completion
ZLE_SPACE_SUFFIX_CHARS=$'&|'

# set options
setopt rmstarsilent globdots nobeep

# change cursor shape for different vi modes
function zle-keymap-select () {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';;
		viins|main) echo -ne '\e[5 q';;
	esac
}

zle -N zle-keymap-select

zle-line-init() {
	zle -K viins
	echo -ne '\e[5 q'
}

zle -N zle-line-init

# use beam shape cursor for each new prompt
preexec() { echo -ne '\e[5 q' ;}

# zsh completion system and prompts
autoload -Uz compinit promptinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
promptinit

# setup prompt
prompt_exort_setup() {
	PS1='%F{#dabefb}%1~%f %B%(?:%F{green}μ:%F{#e64553}λ)%f%b '
	PS2='%B%F{#f5c2e7}λ%f%b '
}

prompt_themes+=( exort )
prompt exort

# completions cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"

# enable highlighting in completion menu
zstyle ':completion:*' menu select

# enable aliases
. "$XDG_CONFIG_HOME/shell/aliasrc"

# syntax highlighting theme
. "$XDG_CONFIG_HOME/shell/theme"

# fish-like syntax highlighting (must be at the end of .zshrc)
. "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

