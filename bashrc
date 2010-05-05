UNAME=`uname`

if [ -d ~/bin ] ; then
   export PATH=~/bin:${PATH}
fi

if [ -d ~/bin/_${UNAME} ] ; then
   export PATH=~/bin/_${UNAME}:${PATH}
fi

if [ -d /opt/local/bin ] ; then
   export PATH=${PATH}:/opt/local/bin
fi

if [ -d ~/.emacs.d/info ] ; then
   export INFOPATH=~/.emacs.d/info:${INFOPATH}
fi
 
if [ -d /Applications/Emacs.app ] ; then
   export PATH=/Applications/Emacs.app/Contents/MacOS/bin:${PATH}
   export PATH=/Applications/Emacs.app/Contents/MacOS:${PATH}
   export EDITOR=emacsclient
   export VISUAL=${EDITOR}
   alias e="emacsclient -e '(ns-raise-emacs)' -a vi"

elif [ -f /usr/bin/vim -o -f /usr/local/bin/vim ]; then
   alias vi='vim'
   export EDITOR=vim
   export VISUAL=vim
else
   export EDITOR=vi
   export VISUAL=vi
fi

alias less='less -r'
alias ls='ls -F'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias l='ls'
alias findmk='find . -iname makefile -or -iname "*.mk" -or -iname "make.*"'
alias findh='find . -iname "*.h" -or -iname "*.hrh" -or -iname "*.pan"'
alias findsrc='find . -iname "*.cpp" -or -iname "*.c" -or -iname "*.h" -or -iname "*.hrh" -or -iname "*.pan"'

export CLICOLOR=true
export CVS_RSH=ssh
export PS1='\w\$ '
export PS2='> '

case `hostname` in
    ed209.home) 
       export CVSROOT=/home/cvs 
       export P4PORT="localhost:8893"
       export MAIL='/home/dss/Maildir'
       ;;
    jupiter) 
       export CVSROOT=:ext:bl_cvs:/home/cvs 
       export P4PORT="192.168.1.229:8893"
       ;;
    *bltmobile.com) 
       export CVSROOT=:ext:bl_cvs:/home/cvs 
       export P4PORT="10.11.13.106:8893"
       ;;
    *) 
       export CVSROOT=:ext:shepard.org:/home/cvs 
       export P4PORT="localhost:8893"
       ;;
esac

export GOROOT=$HOME/go
export GOARCH=386
export GOOS=darwin

