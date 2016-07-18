#-------------------------- PATH Settings ------------------------------
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# brew cask alias, ~/Applications --> /Applications (Added on 12/25,2015)
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#zsh-completions 
fpath=(/usr/local/share/zsh-completions $fpath)
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# export MANPATH="/usr/local/man:$MANPATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#anyenv (12/25, 2015) 

if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    #path to shims
    for env in `ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$env/shims:$PATH"
        for ver in `ls $HOME/.anyenv/envs/$env/versions`
        do
            export PATH="$HOME/.anyenv/envs/$env/versions/$ver/bin:$PATH"
        done
    done
fi

# To use Homebrew's directories rather than ~/.pyenv add to your profile:
# export PYENV_ROOT=/usr/local/var/pyenv
#
# To enable shims and autocompletion add to your profile:
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

#anaconda
#export PATH="$HOME/anaconda/bin:$PATH"

# gnu gcc
# export PATH="/usr/local/gcc-5.3.0/bin:$PATH"
# alias gcc='gcc-5.3.0'
# alias cc='gcc-5.3.0'
# alias g++='g++-5.3.0'
# alias c++='c++-5.3.0'
# alias cpp='cpp-5.3.0'

# export C_INCLUDE_PATH="/usr/local/gcc-5.3.0/include:$C_INCLUDE_PATH"
# export CPLUS_INCLUDE_PATH="/usr/local/gcc-5.3.0/include:$CPLUS_INCLUDE_PATH" 
# export LIBRARY_PATH="/usr/local/lib:/usr/lib/:$LD_LIBRARY_PATH"
#export LD_LIBRARY_PATH="/usr/local/gcc-5.3.0/lib" 

#LATEX
PATH="$PATH:/usr/local/texlive/2015/bin/x86_64-darwin/"
# 
export PATH="/Applications/Skim.app/Contents/MacOS/:$PATH"
export PATH="$HOME/shscripts/:$PATH"
#------------------------- /PATH Settings ------------------------------

#-------------------------- alias -----------------------------------
alias ls='ls -aF'
alias ll='ls -l'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# alias latexmk='latexmk -pvc'

# 現在 mongodb と redisを自動起動する設定にしている 
#mongo server起動
# alias mongodrun='mongod --fork --config /usr/local/etc/mongod.conf &'
#alias mongodon='mongod --dbpath /usr/local/var/db/mongo --journal'
# alias mongodrepair='mongod --dbpath /usr/local/var/db/mongo --repair'

#redis 停止
#alias redisoff='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'

#-------------------------- /alias -----------------------------------

# -------------------  zsh (12/25, 2015) ----------------------------------

setopt no_beep           # ビープ音を鳴らさないようにする
setopt auto_cd           # ディレクトリ名の入力のみで移動する
setopt auto_pushd        # cd時にディレクトリスタックにpushdする
setopt correct           # コマンドのスペルを訂正する
setopt magic_equal_subst # =以降も補完する(--prefix=/usrなど)
setopt prompt_subst      # プロンプト定義内で変数置換やコマンド置換を扱う
setopt notify            # バックグラウンドジョブの状態変化を即時報告する
setopt equals            # =commandを`which command`と同じ処理にする
setopt no_SHARE_HISTORY  # 複数開いたシェル間でのコマンド履歴共有なし
### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする
setopt auto_list               # 補完候補を一覧で表示する(d)
setopt auto_menu               # 補完キー連打で補完候補を順に表示する(d)
setopt list_packed             # 補完候補をできるだけ詰めて表示する
setopt list_types              # 補完候補にファイルの種類も表示する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

# ---------------------- /zsh --------------------------------------------

# ------------------ oh-my-zsh setting (12/25, 2015)-----------------------

#ZSH_THEME="af-magic"
#ZSH_THEME="blinks"
ZSH_THEME="bureau"

# Time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

#plugins ->  ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx bundler brew)

# User configuration
source $ZSH/oh-my-zsh.sh

# manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# ------------------ Function setting ------------------------------
#関数定義(引数3つ)
tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}

tab-reset() {
    echo -ne "\033]6;1;bg;*;default\a"
}

pandoc_embed_html () {
  pandoc --self-contained -s -t html5 --mathjax=$HOME/.pandoc/dynoload.js -c $HOME/.pandoc/github.css $@
}

#function chpwd() { ls; echo -ne "\033]0;$(pwd | rev | awk -F \/ '{print "/"$1"/"$2}'| rev)\007"}
#alias top='tab-color 134 200 0; top; tab-reset'

alias ssh=~/shscripts/ssh-host-color

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.iterm2_shell_integration.`basename $SHELL`
