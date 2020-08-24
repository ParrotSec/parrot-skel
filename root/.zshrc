# Greeting
echo "Welcome to Parrot OS"

# Prompt
PROMPT="%F{red}┌[%f%F{cyan}%m%f%F{red}]─[%f%F{yellow}%D{%H:%M-%d/%m}%f%F{red}]─[%f%F{blue}$PWD%f%F{red}]%f"$'\n'"%F{red}└╼%f%F{green}$USER%f%F{yellow}$%f"
# Export PATH$
export PATH=~/.local/bin:/snap/bin:/usr/sandbox/:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/share/games:/usr/local/sbin:/usr/sbin:/sbin:$PATH

# alias
alias ls='ls -lh --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Basic completions
#autoload -Uz compinit && compinit
#autoload bashcompinit && bashcompinit # Could be useless

###################################################
# Skip upper / lower case completion
# Example: type ~/d* -> auto suggest both d* and D*
#setopt NO_CASE_GLOB # skip Aa for auto completion
#-------------------------------------------------

#################################################
# A bash like completion
#setopt GLOB_COMPLETE
# ---------------------------------------------

################################################
# A fish like completion
# Requires "zsh-autosuggestions" from apt

#-----------------------------------------
