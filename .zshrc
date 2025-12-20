
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# zsh plug
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# User configuration

alias l="lsd -al ./  --blocks permission --blocks date --blocks name"
alias ll="l"
alias lll="l"
alias c="clear"
alias token="cat ~/.local/share/github.token"
alias work="cd ~/work/"
# 加载cargo的环境变量
. "$HOME/.cargo/env"

# 输入法的配置
export XIM=fcitx5
export XIM_PROGRAM=fcitx5
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export SDL_IM_MODULE=fcitx5
export GLFW_IM_MODULE=fcitx5

# huggingface token
export HF_TOKEN="$(cat ~/.local/share/hf.token)"

eval "$(starship init zsh)"
