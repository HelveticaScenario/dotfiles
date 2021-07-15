if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -g EDITOR 'nvim'
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $HOME/.ghcup/bin $PATH # ghcup-env
set -g FZF_DEFAULT_COMMAND "fd --type f --hidden --follow --exclude .git"
