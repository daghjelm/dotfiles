# aliases
alias vim="nvim"
alias vimrc="nvim ~/dotfiles/init.vim"
alias nvimrc="nvim /Users/daghjelm/.config/nvim/lua/"
alias zshrc="nvim ~/dotfiles/config.fish"
alias fishconfig="nvim ~/dotfiles/config.fish"
alias py="/opt/homebrew/bin/python3"

fish_vi_key_bindings

#variables
set GOPATH '/Users/daghjelm/go'
set GOROOT '/opt/homebrew/Cellar/go/1.19/libexec'
set SDKROOT '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk'

fish_add_path /usr/bin
fish_add_path /usr/local/opt/ruby/bin
fish_add_path /opt/homebrew/opt/openjdk/bin
fish_add_path /Users/daghjelm/development/flutter/bin
fish_add_path /Users/daghjelm/Library/Android/sdk/tools/bin
fish_add_path /Users/daghjelm/Library/Python/3.8/bin
fish_add_path /Users/daghjelm/.volta/bin
fish_add_path /Users/daghjelm/google-cloud-sdk/bin
fish_add_path $HOME/.cargo/bin
fish_add_path /usr/local/go/bin
fish_add_path $GOPATH/bin
fish_add_path /Users/daghjelm/jdtls/jdt-language-server-1.9.0-202203031534/bin
fish_add_path /opt/homebrew/opt/llvm/bin
fish_add_path /usr/local/bin
fish_add_path -m /opt/homebrew/bin

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# install starship
# curl -sS https://starship.rs/install.sh | sh

#set starship prompt
starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/daghjelm/anaconda3/bin/conda
    eval /Users/daghjelm/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

