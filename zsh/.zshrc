# Miniplug Install
curl \
  -sL --create-dirs \
  https://git.sr.ht/~yerinalexey/miniplug/blob/master/miniplug.zsh \
  -o $HOME/.local/share/miniplug.zsh

source "$HOME/.local/share/miniplug.zsh"

# Miniplug

miniplug plugin 'zdharma-continuum/fast-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'
miniplug plugin 'zsh-users/zsh-completions'

miniplug load

# History in cache directory:

	HISTSIZE=10000
	SAVEHIST=10000
	HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Auto Complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Prompt
PROMPT=" $ "

# 0x0 

0x0() {
    for i in "$@"
    do
        curl -F file=@$i http://0x0.st
    done
}

# ColorScripts
	colorscript -e crunchbang-mini
	
# ZSH 
source "$HOME/.aliasrc"

