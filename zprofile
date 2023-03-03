# Setup the PATH for pyenv binaries and shims
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
type -a pyenv > /dev/null && eval "$(pyenv init --path)"

export GOPATH=/Users/michaelbernardrouimi/go

export PATH=$PATH:$GOPATH/bin

alias tree='tree -C'
alias c='clear'

# resolve bug of codium
alias codium="/Applications/VSCodium.app/Contents/Resources/app/bin/codium -r"

alias web_new="touch index.html && mkdir js styling && touch js/script.js styling/style.css"
alias localnvim="cd /Users/michaelbernardrouimi/.local/share/nvim/site/pack/packer/"


