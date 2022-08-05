# aliases
alias vim="nvim"
alias vimrc="nvim ~/dotfiles/init.vim"
alias zshrc="nvim ~/dotfiles/config.fish"
alias fishconfig="nvim ~/dotfiles/config.fish"
alias py="python3"

fish_vi_key_bindings

fish_add_path /usr/bin
fish_add_path /usr/local/bin
fish_add_path /opt/homebrew/bin
fish_add_path /usr/local/opt/ruby/bin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path /Users/daghjelm/development/flutter/bin
fish_add_path /Users/daghjelm/Library/Android/sdk/tools/bin
fish_add_path /Users/daghjelm/Library/Python/3.8/bin
fish_add_path /Users/daghjelm/.volta/bin
fish_add_path /Users/daghjelm/google-cloud-sdk/bin
fish_add_path $HOME/.cargo/bin

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# install starship
# curl -sS https://starship.rs/install.sh | sh

#set starship prompt
starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
