export PATH=~/.rbenv/shims:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/Users/aphillips/bin:$PATH

# Load colours
if [ -f ~/.bash/colours.bash ]; then
  . ~/.bash/colours.bash
fi

# Terminal colours
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Aliases
alias ls='ls -g'
alias ll='ls -l'
alias la='ls -la'

alias grep='grep --color=auto'

alias gs='git st -s'
alias gd='git diff'
alias gc='git dc'
alias gl='git ls'
alias gll='git ll'
alias gls='git log'

alias reload=' if source ~/.bash_profile; then echo "Reloaded bash_profile";fi'

# Command shortcuts
alias sb='subl .'
alias v='vim'
alias vm='vim .'

# Path shortcuts
alias jam='cd ~/Projects/Development/JamScript/'
alias bap='cd ~/Projects/Websites/Bon\ App/'
alias notes='cd ~/Documents/Notes/'

alias apps='cd /opt/boxen/repo; sb'

# Fancier aliases to create tmux sessions
alias tsd='~/.tmux/tsd.sh'


# Load bash completion
# if [ -f $(brew --prefix)/etc/bash_completion ]; then
#     . $(brew --prefix)/etc/bash_completion
# fi

# Load git prompt
if [ -f ~/.bash/git-prompt.bash ]; then
  . ~/.bash/git-prompt.bash
fi

# Load git auto-completion
if [ -f ~/.bash/git-completion.bash ]; then
  . ~/.bash/git-completion.bash
fi

# Git in prompt
GIT_PS1_SHOWDIRTY_STATE='.'
GIT_PS1_SHOWUNTRACKEDFILES='+'
# GIT_PS1_SHOWSTASHSTATE='.'
# GIT_PS1_SHOWUPSTREAM='auto'

# Pretty prompts
export PS1="$BLUE\w$CYAN\$git_branch$RED\$git_dirty$RESET "
export SUDO_PS1="$RED\u@\h$BLUE \w$RESET\$ "

# Ruby Garbage Collection settings
export RUBY_HEAP_MIN_SLOTS=2000000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

