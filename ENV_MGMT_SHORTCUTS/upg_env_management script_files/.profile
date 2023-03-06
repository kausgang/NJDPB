

#to show path in prompt
PS1="\${PWD}\ :- "

#to get previous command keyboard shortcut
set -o vi

# MY SCRIPTS
export PATH=$PATH:/home/sadmin/SCRIPT

#ORACLE CLIENT
export PATH=$PATH:/siebqa1/CLIENT/product/12.2.0/client_1/bin
#ORACLE_HOME
export ORACLE_HOME=/siebqa1/CLIENT/product/12.2.0/client_1


LD_LIBRARY_PATH=$ORACLE_HOME/lib:$ORACLE_HOME/lib32:$ORACLE_HOME/srvm/lib:$ORACLE_HOME/network/lib:/usr/dt/lib
export LD_LIBRARY_PATH

LIBPATH=$ORACLE_HOME/lib:$ORACLE_HOME/srvm/lib:$ORACLE_HOME/network/lib:/usr/dt/lib
export LIBPATH

export JAVA_HOME=/siebqa1/SIEBEL/jre
export PATH=$JAVA_HOME/bin:$PATH


alias cdns='cd /siebqa1/SIEBEL/gtwysrvr/registry/conf'
alias cdlog='cd /siebqa1/SIEBEL/siebsrvr/enterprises/SBA_UTST/app1/log'
alias cdex='cd /siebqa1/SIEBEL/applicationcontainer_external'
alias cdin='cd /siebqa1/SIEBEL/applicationcontainer_internal'

alias ai_stop='/siebqa1/SIEBEL/applicationcontainer_external/bin/shutdown.sh'
alias ai_start='/siebqa1/SIEBEL/applicationcontainer_external/bin/startup.sh'

alias ses_stop='/siebqa1/SIEBEL/applicationcontainer_internal/bin/shutdown.sh'
alias ses_start='/siebqa1/SIEBEL/applicationcontainer_internal/bin/startup.sh'




alias siebenv='. /siebqa1/SIEBEL/siebsrvr/siebenv.sh'
alias gtwy='. /siebqa1/SIEBEL/gtwysrvr/siebenv.sh'
alias s='siebenv;srvrmgr -g ty-sebtst2-ma-s.njes.state.nj.us:9111 -e SBA_UTST -u SADMIN -p siebdev99'


alias psg='ps -eaf|grep '

#LOAD SIEBEL PROFILE AT STARTUP
siebenv


#SHOW TNS ENTRY
alias tns='cat $ORACLE_HOME/network/admin/tnsnames.ora'


#for Siebel migration
export LDR_CNTRL=LOADPUBLIC@MAXDATA=0x60000000

alias profile='cat ~/.profile'
