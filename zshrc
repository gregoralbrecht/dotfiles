export LANG=en_US.UTF-8

# If a pattern for filename generation has no matches, print an error, instead of leaving it unchanged in the argument list. 
setopt +o nomatch

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Disable shared command history between panes and windows
unsetopt share_history

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=1

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Nice git log
alias glola="git log --graph --decorate --pretty=oneline --abbrev-commit --all --date=local"

# Plugins
plugins=(git fzf aws osx dotenv git-auto-fetch zsh-syntax-highlighting yarn)

source $ZSH/oh-my-zsh.sh

# A more minimal prompt
# See: https://github.com/sindresorhus/pure
# autoload -U promptinit; promptinit
# prompt pure

# A more configurable prompt
# See: https://github.com/denysdovhan/spaceship-prompt
autoload -U promptinit; promptinit
prompt spaceship
SPACESHIP_NODE_SHOW=false 

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshrc="code $HOME/.dotfiles/zshrc"
alias dotfiles="code $HOME/.dotfiles"

# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

# See: https://remysharp.com/2018/08/23/cli-improved
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
alias cat='bat'
alias ping='prettyping --nolegend'
alias top="sudo htop"

# Syntax highlighting, must be sourced at the end
# See: https://github.com/zsh-users/zsh-syntax-highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
