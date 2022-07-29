if status is-interactive
    # Commands to run in interactive sessions can go here
end

#My custom aliases
alias vim="nvim"
alias ls="exa -l -a --icons"

# Powerline
#export PATH="$PATH:/home/hugostanley/.local/bin/"
#export LC_ALL=en_US.UTF-8
#powerline-daemon -q
#set POWERLINE_FISH_CONTINUATION 1
#set POWERLINE_FISH_SELECT 1
#set _POWERLINE_SOURCED "/home/hugostanley/.local/lib/python3.10/site-packages/powerline/bindings/shell/powerline.sh"


# starship init fish | source

alias config='/usr/bin/git --git-dir=/home/hugostanley/dotfiles --work-tree=/home/hugostanley'
