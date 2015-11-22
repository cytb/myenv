# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

 
zsh_p_ssh=""
if [ -n "${SSH_CONNECTION}" ]; then
  zsh_p_ssh="%{$fg_bold[red]%}#ssh "
fi
 
PROMPT="
%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m${zsh_p_ssh} %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_
%{$fg_bold[blue]%}$(prompt_char)%{$reset_color%} "
 
ZSH_THEME_GIT_PROMPT_PREFIX="
%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
 
stty stop undef

export_path(){
    local APPEND=$1
    shift
    while [ -n "$1" ]
    do
        ${APPEND} ${1}
        shift
    done
}

append_path_pre(){
    export PATH=$1:${PATH}
}

append_path_post(){
    export PATH=${PATH}:$1
}

export_list(){
  if [ -n "$1" ]
  then
    while read target_path
    do
      export_path $1 "$target_path"
    done
  fi
}

export EDITOR=vim

# PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%} %n %{$fg[cyan]%} %~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
# Customize to your needs...

export GOPATH=$HOME/go-pkg

export_list append_path_pre << end_path_list
/usr/x86_64-pc-linux-gnu/gcc-bin/4.7.3
$HOME/node_modules/.bin
$HOME/.local/opt/pd/bin
$HOME/.local/bin
$HOME/.cabal/bin
$HOME/.npm/bin
$HOME/.local/opt/netbeans-dev/bin
end_path_list

export_list append_path_post << end_path_list
$HOME/.xmonad
$HOME/.gem/ruby/1.9.1/bin
$HOME/.gem/ruby/2.1.0/bin
$HOME/.gem/ruby/2.2.0/bin
/usr/local/bin
/usr/bin
/bin
/opt/bin
/usr/games/bin
/opt/android-sdk/platform-tools/
$GOPATH/bin
$HOME/.gem/ruby/2.1.0/bin
$HOME/.local/opt/android-ndk/
end_path_list

# Promptline
PROMPTLINE_ZSH="$HOME/environment/promptline.sh"
if [ -f "$PROMPTLINE_ZSH" ]; then
  . "$PROMPTLINE_ZSH"
fi

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

stty stop undef

pacman-search(){
    pacman -Ss "^($(pacman -Ssq $1 | grep git | tr "\\n" "|"  | sed 's/|$//' ))\$"
}

# nvm
source $HOME/.nvm/nvm.sh

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#


export GVM_INIT=false
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
