# aliases
alias vim="nvim"
alias vimrc="nvim ~/dotfiles/init.vim"
alias zshrc="nvim ~/dotfiles/config.fish"
alias fishconfig="nvim ~/dotfiles/config.fish"
alias py="python3"

fish_vi_key_bindings

fish_add_path /usr/local/bin
fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/opt/ruby/bin
fish_add_path /Users/daghjelm/development/flutter/bin
fish_add_path /Users/daghjelm/Library/Android/sdk/tools/bin
fish_add_path /Users/daghjelm/Library/Python/3.8/bin

# install starship
# curl -sS https://starship.rs/install.sh | sh

#set starship prompt
starship init fish | source
