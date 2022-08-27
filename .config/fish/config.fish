if status is-interactive
    # Commands to run in interactive sessions can go here
end

#My custom aliases
alias v="nvim"
alias ls="exa -l -a --icons"

#set nvim as default
export EDITOR=vi

# Powerline
export PATH="$PATH:/home/hugostanley/.local/bin/"
export LC_ALL=en_US.UTF-8
powerline-daemon -q
set POWERLINE_FISH_CONTINUATION 1
set POWERLINE_FISH_SELECT 1
set _POWERLINE_SOURCED "/home/hugostanley/.local/lib/python3.10/site-packages/powerline/bindings/shell/powerline.sh"


# starship init fish | source

alias config='/usr/bin/git --git-dir=/home/hugostanley/dotfiles --work-tree=/home/hugostanley'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#. /home/hugostanley/.asdf/asdf.sh

source ~/.asdf/asdf.fish
