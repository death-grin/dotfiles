# Colors
red="\e[0;31m\033[1m"
green="\e[0;32m\033[1m"
yellow="\e[0;33m\033[1m"
blue="\e[0;34m\033[1m"
purple="\e[0;35m\033[1m"
cyan="\e[0;36m\033[1m"
white="\e[0;37m\033[1m"
reset="\033[0m\e[0m"

# PATH
PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$HOME/.cargo/env:$HOME/.cargo/bin

# Aliases
alias ls='lsd --group-dirs=first'

# Configure key keybindings
bindkey -e                                        # emacs key bindings
bindkey ' ' magic-space                           # do history expansion on space
bindkey '^U' backward-kill-line                   # ctrl + U
bindkey '^[[3;5~' kill-word                       # ctrl + Supr
bindkey '^[[3~' delete-char                       # delete
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[5~' beginning-of-buffer-or-history    # page up
bindkey '^[[6~' end-of-buffer-or-history          # page down
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end
bindkey '^[[Z' undo                               # shift + tab undo last action

# Functions
function getPorts()
{
	echo ""
	echo -e "${white}[!] ${blue}Extracting ports...${reset}"
	echo ""
	ip_address=$(cat $1 | grep -oP "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" | sort -u)
	open_ports=$(cat $1 | grep -oP "\d{1,3}/open" | awk '{print $1}' FS='/' | xargs | tr ' ' ',')
	echo -e "\t${yellow}[·] ${green}IP Address: ${white}$ip_address${reset}"
	echo -e "\t${yellow}[·] ${green}Open ports: ${white}$open_ports${reset}"
	echo ""
	echo $open_ports | tr -d '\n' | xclip -sel clip
	echo -e "${white}[!] ${blue}PORTS HAVE BEEN COPIED TO CLIPBOARD!${reset}"
	
}

function target()
{
	target_ip=$1
	if [[ "$target_ip" == "remove" ]]; then
		/usr/bin/sed -i 's/^target=".*"/target=""/' ~/.config/polybar/scripts/target.sh
		echo -e "${white}TARGET HAS BEEN ${red}REMOVED${reset}"
	else
		/usr/bin/sed -i "s/^target=\"\"$/target=\"$target_ip\"/" ~/.config/polybar/scripts/target.sh
		echo -e "${blue}TARGET HAS BEEN SET!${reset}"
	fi
}

# Use modern completion system
autoload -Uz compinit
compinit -i

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh