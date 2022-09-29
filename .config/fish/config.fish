if status is-interactive
    # Commands to run in interactive sessions can go here
end

#My custom aliases
alias v="nvim" # general neovim
alias vd="nvim ." # launch neovin in current directory
alias ls="exa -l -a --icons" # exa
alias r="ruby" # run ruby
alias rcw="ruby -cw" # run ruby syntax checking
alias ta="tmux attach" # attach to most recent session
alias td="tmux new -d -s" # new sesh on bg; prov name
alias ts="tmux new -s" # new sesh & attach; prov name
alias tl="tmux ls" # list tmux seshs
alias te="tmux detach" 

alias lsp-rails="ln -s ~/for_rails/rails.rb ./config/definitions.rb"

# KEYBINDINGSSSSSS
### VI KEYBINDINGS
# fish_vi_key_bindings
### DEFAULT
 fish_default_key_bindings

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
export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"

source ~/.asdf/asdf.fish
export PATH="$HOME/tools/lua-language-server/bin:$PATH"
