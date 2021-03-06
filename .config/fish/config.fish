if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias vim="nvim"
set -Ux XDG_CONFIG_HOME (realpath ~)/.config
set -Ux EDITOR 'nvim'
set -Ux VISUAL 'code'
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH # ghcup-env
set -g FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
alias db="dotbare"
alias ls='nnn -de'

if test -n "$DESKTOP_SESSION"
    set -x (gnome-keyring-daemon --start | string split "=")
end
