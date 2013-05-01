#!/bin/bash
# ~/.bash_profile: executed by bash(1) for login shells.
 
umask 022
 
##
# set up some env variables
set -o allexport 
 ENV=$HOME/.bashrc
 HISTFILESIZE=0
 BIN=S100
 auto_resume=true
 PAGER=less
 EDITOR=emacs

set +o allexport 

##
# TERM variable set here
if [ "$TERM" = "dialup" -o \
     "$TERM" = "network" -o \
     "$TERM" = "dumb" -o \
     "$TERM" = "default" -o \
     "$TERM" = "unknown" ]
then
  echo -n 'Terminal type (vt100): ' 
  read TERM
  [ "$TERM" = "" ] && TERM="vt100" 
fi
 
export TERM

[ -f ~/.bashrc ] && source ~/.bashrc
