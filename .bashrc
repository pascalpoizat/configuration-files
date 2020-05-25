alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias git=hub
alias ide='open . -a Visual\ Studio\ Code'
export PATH=$PATH:$HOME/.local/bin
export FBPMN_HOME=$HOME/Documents/Code/fbpmn-private
export TLA2TOOLS_HOME=$HOME/Downloads
export PATH=$PATH:/Applications/Isabelle2017.app/Isabelle/bin
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/.local/Maude-2
export VECA_HOME=$HOME/.local/bin
alias maude=maude.darwin64
export GPG_TTY=$(tty)
export SCALA_HOME=/usr/local/opt/scala/idea
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# added by travis gem
[ -f /Users/pascalpoizat/.travis/travis.sh ] && source /Users/pascalpoizat/.travis/travis.sh
