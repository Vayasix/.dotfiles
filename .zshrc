#-------------------------- PATH Settings ------------------------------
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# brew cask alias, ~/Applications --> /Applications (Added on 12/25,2015)
# export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#zsh-completions 
fpath=(/usr/local/share/zsh-completions $fpath)
# Path to your oh-my-zsh installation.
export ZSH=/Users/HIROKI/.oh-my-zsh
# export MANPATH="/usr/local/man:$MANPATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#anyenv (12/25, 2015) 

if [ -d $HOME/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    #path to shims
    for D in `ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
        for V in `ls $HOME/.anyenv/envs/$D/versions`
            do
                export PATH="$HOME/.anyenv/envs/$D/versions/$V/bin:$PATH"
                export PATH="$HOME/.anyenv/envs/$D/versions/$V/lib:$PATH"
            done
    done
    
fi

#------------------------- /PATH Settings ------------------------------

#-------------------------- alias -----------------------------------
alias ls='ls -aF'
alias ll='ls -l'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# 現在 mongodb と redisを自動起動する設定にしている 
# 手動起動の際はこれを使う
# mongod --config /usr/local/etc/mongod.conf

#mongo server起動
alias mongodon='mongod --dbpath /usr/local/var/mongodb --journal'
alias mongodrepair='mongod --dbpath /usr/local/var/mongodb --repair'

#redis 停止
alias redisoff='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'

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

### Complement ###
autoload -U compinit; compinit # 補完機能を有効にする
setopt auto_list               # 補完候補を一覧で表示する(d)
setopt auto_menu               # 補完キー連打で補完候補を順に表示する(d)
setopt list_packed             # 補完候補をできるだけ詰めて表示する
setopt list_types              # 補完候補にファイルの種類も表示する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

# ---------------------- /zsh --------------------------------------------

# ------------------ oh-my-zsh setting (12/25, 2015)-----------------------

# Set the theme: -->  ~/.oh-my-zsh/themes/
# Theme:==> https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="random" <-- change everytime
#ZSH_THEME="cordial"
ZSH_THEME="robbyrussell"

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
# DISABLE_AUTO_TITLE="true"

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

#plugins ->  ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx bundler brew)

# User configuration
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ------------------ /oh-my-zsh setting ------------------------------

#--------------------- brew (12/25, 2015) ------------------------------
#alias
alias rm="trash"
#--------------------------- /brew ---------------------------------


#remote file editing
#vim scp://ユーザ名@リモートホスト(IPアドレス)//編集対象のファイル
#vim scp://lifexme@lifexme.xsrv.jp:10022//home/lifexme/meetpid.com/
export xsrv="lifexme@lifexme.xsrv.jp:10022//home/lifexme"


#-----------AWS instance, ssh Login -----------------------
# AmazonLinux instance 
#これまで作った インスタンス
#
# aws1: AmazonLinux meetpidの事前登録ページ用
alias aws1='ssh -i ~/.mememe/KEY_AWS/"HirokiAL.pem" ec2-user@ec2-52-53-236-250.us-west-1.compute.amazonaws.com'


#------------------- /AWS ------------------------------------------
