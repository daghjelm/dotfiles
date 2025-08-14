#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

bindkey -v

bindkey '^R' history-incremental-search-backward

# aliases
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias nicelog="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"

# prepended path variables
path=('/usr/local/bin' $path)
path=('/opt/homebrew/bin' $path)
path=('/opt/spotify-devex/bin', $path)

# appended path variables
path+=($(go env GOPATH)'/bin')

export PATH

# for google-cloud-sdk
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# this is how to get nvm to work when installed with brew
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export BGP_SERVICE_ID="dagh-golden-path-tutorial"
export BGP_SERVICE_ID_WITHOUT_DASHES="daghgoldenpathtutorial"
export WORKSPACE="$HOME/workspace"

# Spotify specific golang 
export GOPROXY=https://gomodproxy.spotify.net
export GONOSUMDB=ghe.spotify.net

# Initialize starship prompts
eval "$(starship init zsh)"


# Notes after `brew install coreutils`
# Commands also provided by macOS and the commands dir, dircolors, vdir have been installed with the prefix "g".
# If you need to use these commands with their normal names, you can add a "gnubin" directory to your PATH with:
#   PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH=/opt/spotify-devex/bin:$PATH
