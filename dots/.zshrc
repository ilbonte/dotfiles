export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/usr/local/Cellar:$PATH"

source /usr/local/share/antigen/antigen.zsh
antigen bundle git
antigen bundle git-extras
antigen bundle autojump
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle danielefongo/shapeshift
antigen bundle aws
antigen bundle fzf

antigen apply

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

setopt auto_cd

source ~/.aliases
source ~/.functions

#fix warning: Homebrew's sbin was not found in your PATH but you have installed formulae that put executables in /usr/local/sbin. Consider setting the PATH
export PATH="/usr/local/sbin:$PATH"

#disalbe homebrew autoupdate
HOMEBREW_NO_AUTO_UPDATE=1

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/texlive/2020/bin/x86_64-darwin:$PATH"
eval $(thefuck --alias)

export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
