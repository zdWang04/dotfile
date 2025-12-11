# zsh plug
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# oh-my-zsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration

alias l="lsd -al ./  --blocks permission --blocks date --blocks name"
alias ll="l"
alias lll="l"
alias c="clear"
alias token="cat ~/.local/share/github_personal.token"
# 加载cargo的环境变量
. "$HOME/.cargo/env"

# go env
export PATH=$PATH:/usr/local/go/bin

# 输入法的配置
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# uv pypi mirrow https://pypi.tuna.tsinghua.edu.cn/simple
# mason 插件路径
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# bun completions
#[ -s "/home/dongdong/.local/share/reflex/bun/_bun" ] && source "/home/dongdong/.local/share/reflex/bun/_bun"

# bun
#export BUN_INSTALL="$HOME/.local/share/reflex/bun"
#export PATH="$BUN_INSTALL/bin:$PATH"
