# .zprofile

# !!!
# to make zsh able to see this directory you need to add the next line to your /etc/zsh/zshenv
# export ZDOTDIR=$HOME/.config/zsh
# !!!

# default programs
export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# xdg specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# scripts directory
export SCRIPTS="$HOME/.local/bin"

# x11
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XCURSOR_PATH="$XDG_DATA_HOME/icons"
export XCURSOR_THEME="volantes_cursors"

# hardware video acceleration (vaapi)
export LIBVA_DRIVER_NAME=iHD

# enable firefox smooth scrolling
export MOZ_USE_XINPUT2=1

# enable hidpi scaling in gtk applications
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# use gtk file dialogs (in telegram)
export QT_QPA_PLATFORMTHEME=gtk3

# less keybinds
export LESSKEYIN="$XDG_CONFIG_HOME/less/lesskey"

# bitwarden data
export BITWARDENCLI_APPDATA_DIR="$XDG_DATA_HOME/bitwarden"

# gnupg directory
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

