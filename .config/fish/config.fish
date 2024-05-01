if status is-interactive
    # Commands to run in interactive sessions can go here
end

#My custom aliases
alias v="nvim" # general neovim
alias vd="nvim ." # launch neovin in current directory
alias ll="exa -l -a --icons" # exa
alias r="ruby" # run ruby
alias rcw="ruby -cw" # run ruby syntax checking
alias ta="tmux attach" # attach to most recent session
alias td="tmux new -d -s" # new sesh on bg; prov name
alias ts="tmux new -s" # new sesh & attach; prov name
alias tl="tmux ls" # list tmux seshs
alias te="tmux detach" 
alias gc="git checkout"
alias Gs="git status"
alias Gcm="git commit -m"
alias Ga="git add"
alias GA="git add -A"
alias tcdt="tmux new -c ~/Documents/Work/EduFied/CDT/ -d -s cdt && echo tmux started at ~/Documents/Work/EduFied/CDT/"
alias topen="tmux new -c ~/Documents/Work/EduFied/redo/opencert-renderer-edufied -d -s open && echo tmux started at ~/Documents/Work/EduFied/another/opencert-renderer-edufied"
alias tback="tmux new -c ~/Documents/Work/EduFied/ciap-mms-backend -d -s back && echo tmux started at ~/Documents/Work/EduFied/ciap-mms-backend"
alias tveri="tmux new -c ~/Documents/Work/EduFied/another/filpass-verifier-oa -d -s veri && echo tmux started at ~/Documents/Work/EduFied/another/filpass-verifier-oa"

alias mernback="git clone git@github.com:hugostanley/node-starter.git"
alias mernfront="git clone git@github.com:hugostanley/react-starter.git"
alias lsp-rails="ln -s ~/for_rails/rails.rb ./config/definitions.rb"
alias agn="asdf global nodejs"

# KEYBINDINGSSSSSS
### VI KEYBINDINGS
 fish_vi_key_bindings
### DEFAULT
#fish_default_key_bindings

# Powerline
export PATH="$PATH:/home/hugostanley/.local/bin/"
export LC_ALL=en_US.UTF-8
powerline-daemon -q
set POWERLINE_FISH_CONTINUATION 1
set POWERLINE_FISH_SELECT 1
set _POWERLINE_SOURCED "/home/hugostanley/.local/lib/python3.10/site-packages/powerline/bindings/shell/powerline.sh"
set CC "clang"
set CFLAGS "-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
set LDLIBS "-lcrypt -lcs50 -lm"


# starship init fish | source

set -x PATH $HOME/.asdf/bin $PATH
set -x PATH $HOME/.asdf/shims $PATH

alias config='/usr/bin/git --git-dir=/home/hugostanley/dotfiles --work-tree=/home/hugostanley'
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# /home/hugostanley/.asdf/asdf.sh
export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"

source ~/.asdf/asdf.fish
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/tools/lua-language-server/bin:$PATH"
export OPENAI_API_KEY="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"

#GOLANG
export PATH="$PATH:/usr/local/go/bin"

    # TokyoNight Color Palette
#    set -l foreground c0caf5
#    set -l selection 33467C
#    set -l comment 565f89
#    set -l red f7768e
#    set -l orange ff9e64
#    set -l yellow e0af68
#    set -l green 9ece6a
#    set -l purple 9d7cd8
#    set -l cyan 7dcfff
#    set -l pink bb9af7
#    
#    # Syntax Highlighting Colors
#    set -g fish_color_normal $foreground
#    set -g fish_color_command $cyan
#    set -g fish_color_keyword $pink
#    set -g fish_color_quote $yellow
#    set -g fish_color_redirection $foreground
#    set -g fish_color_end $orange
#    set -g fish_color_error $red
#    set -g fish_color_param $purple
#    set -g fish_color_comment $comment
#    set -g fish_color_selection --background=$selection
#    set -g fish_color_search_match --background=$selection
#    set -g fish_color_operator $green
#    set -g fish_color_escape $pink
#    set -g fish_color_autosuggestion $comment
#    
#    # Completion Pager Colors
#    set -g fish_pager_color_progress $comment
#    set -g fish_pager_color_prefix $cyan
#    set -g fish_pager_color_completion $foreground
#    set -g fish_pager_color_description $comment
    
  

export app_DATABASE_PASSWORD="599325"

# pnpm
set -gx PNPM_HOME "/home/hugostanley/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

export KERL_BUILD_DOCS="yes"
