alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias mkcd='_(){ mkdir -pv $1; cd $1; }; _'

alias h='history'
alias c='clear'

alias df='df -H'

alias o='open'
alias o.='open .'

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

alias lsperm='ls -l | awk "{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/) \
             *2^(8-i));if(k)printf("%0o ",k);print}"' 

alias ll='ls -lhAt'
alias lsa='ls -a'
alias llr='ls -lhAtr'
alias ltr='ls -lhAtr'
alias lls='ls -lhS'

alias where=which # makes more sense
alias chrome='open -a "Google Chrome" '

alias speedometer='speedometer -l  -r wlan0 -t wlan0 -m $(( 1024 * 1024 * 3 / 2 ))'

alias ad='adb devices'
alias cr='cordova run android'

# Redshift ubuntu
alias redshift='redshift -l 44.7866:20.4489'

# Grep shortcut
alias gr='grep -A5 '
# Show/hide hidden files in Finder
alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ping='ping -c 5'

alias allusers='cut -d: -f1 /etc/passwd'

alias fs='stat -f \"%z bytes\"' 
alias s='sublime'

# Determine size of a file or total size of a directory
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh
	else
		local arg=-sh
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@"
	else
		du $arg .[^.]* *
	fi
}

# Start an HTTP server from a directory, optionally specifying the port
function httpserver() {
	local port="${1:-8000}"
	sleep 1 && open "http://localhost:${port}/" &
	# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
	# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
	python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# GIT
alias push="git push"
alias gitl="git log --decorate --graph --oneline --all"	
alias tarz='tar -zxvf'

# personal project related
alias wrk='cd ~/Work'
alias nrsw='npm run serve:webpack'