umask 022

if [ "$TERM" = "xterm" -o "$TERM" = "vt100" ]
then
  # this reverses the prompt if root, normal if not
  [ -w / ] && export PS1='\[\e[07m\]\u@\h [\w] \$\[\e[0m\] '
else
  export PS1='\u@\h [\w] \$ '
fi

alias .t="rm -f *~ .*~ xerrors core.* a.out"
alias .x="chmod +x"
alias eamcs="emacs"
alias l="less"
alias ls="ls -F"
alias ll="ls -la"
alias llm="ls -la|more"
alias lll="ls -la|less"
alias lld="ls -ld"
alias llh="ls -lh"
alias lsrlta="ls -lrta"
alias rlta="ls -lrta"
alias lrta="ls -lrta"
alias moer="/usr/bin/more"
alias mroe="/usr/bin/more"
alias null="cat > /dev/null"
alias sl="ls -F"
alias x="xterm -ut -name `hostname`& exit"
alias xt="xterm -ut -name `hostname`&"
alias xssh='exec xterm -T $1 -e ssh -XY $1 &'
alias aperco='cd /home/jcc; svn co https://aper.svn.sourceforge.net/svnroot/aper aper'
alias aperci='svn ci aper'

if [ `uname` = "Linux" ]
then
  # alias for slide on new fangled linux boxes
fi
if [ `uname` = "SunOS" ]
then
  # give me my .Xdefaults
        alias xdefs="/usr/openwin/bin/xrdb $HOME/.Xdefaults 2>&1"
        
fi
