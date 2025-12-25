# 安装

## 先克隆这个仓库的配置


## 需要安装的工具链

- 工具链
```shell
  sudo apt update && sudo apt install curl git cmake gcc build-essential 
```

- rust
```shell
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

- uv 
```shell 
  cargo install uv --locked
```

- alacritty
```shell
  git clone https://github.com/alacritty/alacritty.git && cd alacritty && cargo build --release
  # 之后跟着 postbuild 的说明
  
  # 设置为默认终端
  sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
  sudo update-alternatives --config x-terminal-emulator
  
  # 配置文件
  mkdir -p ~/.config/alacritty/
  cp dotfile/alacritty ~/.config/alacritty/ 
```

- 终端工具
```shell
  cargo install fd-find --locked
  cargo install bottom --locked
```

## 安装 Lazyvim

- [手动安装最新release](https://github.com/neovim/neovim/releases)

```shell
  cp -r dotfile/nvim ~/.config
  # nvim 打开后准备安装 
```


## 终端美化相关

```shell
  sudo apt install zsh # 安装 zsh 
  chsh -s $(which zsh) # 设置为默认shell, 需要重新登陆
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cargo install starship --locked  # 终端美化
  cp dotfile/.zshrc ~/.zshrc # 覆盖已有的 .zshrc
```

## 杂项

- 字体设置
```shell
  mkdir -p ~/.local/share/fonts/ # 终端字体/中文常用字体都放在该目录下
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip # 终端字体
  git clone https://github.com/dv-anomaly/ttf-wps-fonts.git # wps 字体，使用该仓库的 install.sh 进行安装
  git clone https://github.com/Haixing-Hu/latex-chinese-fonts.git # 中文常用字体 
```

- 输入法
```shell
  # 在 $(wps) 和 $(wpspdf) 的开头加上以下内容
  GTK_IM_MODULE=fcitx
  QT_IM_MODULE=fcitx
  XMODIFIERS=@im=fcitx
```


