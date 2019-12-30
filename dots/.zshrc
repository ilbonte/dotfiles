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

antigen apply

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

setopt auto_cd

source ~/.aliases
source ~/.functions