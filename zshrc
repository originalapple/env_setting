#-------------add manually-----------------
plugins=(
        zsh-autosuggestions
)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#show myself in command line
#parse_git_branch() {
#  git branch 2>/dev/null | sed -n '/\* /s///p'
#}
#PROMPT='%F{cyan}%n@%F{green}%m:%F{red}%~%F{yellow}$(parse_git_branch)%f%  '

# run for vscode in iterm2
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

prompt_context() {
	if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    	prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
    fi
}

#ls after "cd" command automatically
#function cd { builtin cd $* && pwd && ls -CF --color; }
function cd { builtin cd $* && eza -F --icons; }

# Let's see some alias world!!!
#alias ls='ls -F --color'
#alias ll='ls -l -h --color'
#alias la='ls -a --color'

#alias ...='../..'
#alias ....='../../..'
#alias .....='../../../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
#new generation ls command, It's eza! It's super cool
alias eza='eza --icons'
alias ls='eza -bF --icons'
alias ll='eza -lhbF --icons '
alias la='eza -lhbFa --icons '
alias lt='eza --tree --level=3'
