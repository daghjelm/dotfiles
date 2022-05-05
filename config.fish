# aliases
alias vim="nvim"
alias vimrc="nvim ~/dotfiles/init.vim"
alias zshrc="nvim ~/dotfiles/config.fish"
alias fishconfig="nvim ~/dotfiles/config.fish"
alias py="python3"

fish_vi_key_bindings

fish_add_path /usr/local/opt/ruby/bin
fish_add_path /Users/daghjelm/flutter/bin
fish_add_path /Users/daghjelm/Library/Android/sdk/tools/bin



starship init fish | source
