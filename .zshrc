# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR="nvim"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	git
	poetry	
        compleat
        zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' '^ulfcd\n'

function bj () {
    if [ -x "$(command -v fzf)" ]; then
        cd $(cat ~/.local/share/bm-dirs | fzf)
        return
    fi

    awk '{printf "%d\t%s\n", NR, $0}' < ~/.local/share/bm-dirs

    echo -n "Jump to: "
    read line_n
    if [[ ! $line_n =~ ^[0-9]+$ ]] ; then
        echo "No good"
        return
    fi

    dir=`sed "$line_n q;d" ~/.local/share/bm-dirs`
    echo $dir
    cd $dir
}

function bm () {
    pwd >> ~/.local/share/bm-dirs
}

# alias jt='cd $(find ~/code -type d -maxdepth 1 -print | fzf) && nvim .'
alias jt='cd $(( find ~/code -maxdepth 1 -type d -print; find ~/code/_* -maxdepth 1 -type d -print ) | cat | fzf) && nvim .'
alias mbd='nvim ~/.local/share/bm-dirs'
alias bd='vi ~/.local/share/bm-dirs'

alias vw='cd ~/Sync/vvihorev-vault && nvim index.md'
alias v="nvim"

alias findf="find . -type f -name"

alias emc="emacsclient --no-wait --create-frame"
alias em="emacsclient -t -a ''"
alias emd="emacs --daemon"

alias penv="source virtualenv/bin/activate"

alias rotate-wacom="xsetwacom set $(xsetwacom list | grep stylus | awk '{ print $9 }') rotate half"
