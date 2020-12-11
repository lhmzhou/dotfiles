# ----------------------------------------------------------------------------
# Useful functions

command_exists () {
    type "$1" &> /dev/null ;
}

# ----------------------------------------------------------------------------
# source other files

for file in ~/.{bash_prompt,bashrc}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# ----------------------------------------------------------------------------
# bash_completion

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# ----------------------------------------------------------------------------
# aliases

alias vi='nvim'
alias vim='nvim'
alias vimdiff='nvim -d'

# competitive compiling
alias c='g++ -std=c++17 -Wall -Werror -Wshadow -O2 -pedantic -fsanitize=undefined,address'

# ----------------------------------------------------------------------------
# exports

export EDITOR=nvim

# Default blocksize for ls, df, du
export BLOCKSIZE=1k

# ----------------------------------------------------------------------------
# shopt

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
export HISTFILESIZE=500000
export HISTSIZE=100000
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# ----------------------------------------------------------------------------
# set
set -o vi

export PATH="$HOME/.cargo/bin:$PATH"
