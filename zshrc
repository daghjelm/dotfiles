# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
#autoload -U promptinit; promptinit
#prompt pure

# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# User configuration
#PS1='%n@%m $(shrink_path -f)>'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

bindkey -v

# aliases
alias vim="nvim"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias py="python3"
#alias co="checkout"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daghjelm/Documents/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/daghjelm/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daghjelm/Documents/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/daghjelm/Documents/google-cloud-sdk/completion.zsh.inc'; fi

#NVM path
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export GOPATH="/Users/daghjelm/go"
#export SDKROOT='/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk'

path+=('/Users/daghjelm/development/flutter/bin')
path+=('/Users/daghjelm/flutter/bin')
path+=('/opt/homebrew/bin')
path+=('/usr/bin')
path+=('/usr/local/bin')
path+=('/usr/local/opt/ruby/bin')
path+=('/Users/daghjelm/Library/Android/sdk/tools/bin')
path+=('/Users/daghjelm/go/bin')
path+=('/opt/homebrew/opt/openjdk/bin')
path+=('/opt/homebrew/opt/llvm/bin')
path+=('/Users/daghjelm/Library/Python/3.8/bin')
path+=('/Users/daghjelm/.volta/bin')
path+=('/Users/daghjelm/google-cloud-sdk/bin')
path+=('$HOME/.cargo/bin')
path+=('/usr/local/go/bin')
path+=('$GOPATH/bin')
path+=('/Users/daghjelm/jdtls/jdt-language-server-1.9.0-202203031534/bin')

export PATH

eval "$(starship init zsh)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export GOROOT="/opt/homebrew/Cellar/go/1.19/libexec"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
