alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."

alias h='history'

alias df='df -H'

alias o.='xdg-open .'

# mv, rm, cp
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

alias lsperm='ls -l | awk "{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/) \
             *2^(8-i));if(k)printf("%0o ",k);print}"' 

alias where=which # makes more sense

alias speedometer='speedometer -l  -r wlan0 -t wlan0 -m $(( 1024 * 1024 * 3 / 2 ))'

alias ad='adb devices'
alias cr='cordova run android'

alias redshift='redshift -l 44.7866:20.4489'


alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias ping='ping -c 5'


alias allusers='cut -d: -f1 /etc/passwd'

alias fs='stat -f \"%z bytes\"' 

# GIT
alias push="git push"
alias gitl="git log --decorate --graph --oneline --all"	

alias emptytrash=" \
    sudo rm -rfv /Volumes/*/.Trashes; \
    rm -rfv ~/.Trash/*; \
    sudo rm -v /private/var/vm/sleepimage; \
    rm -rv \"/Users/paulirish/Library/Application Support/stremio/Cache\";  \
    rm -rv \"/Users/paulirish/Library/Application Support/stremio/stremio-cache\" \
"
alias tarz='tar -zxvf'