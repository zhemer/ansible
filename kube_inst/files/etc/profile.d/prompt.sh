COLOR='\n\e[4m\[\e[93m\]'
[ "`id -u`" == '0' ] && COLOR='\n\e[4m\[\e[91m\]'

get_cpu() {
    top -bn1|head -3|tail -1|awk -F'[ ,]+' '{printf("cpu %02.fu %02.fs %02.fn %02.fi",$2,$4,$6,$8)}'
}

export PS1=$COLOR'\u@\h\[\033[0m\]\e[4m:\[\e[92m\]\w\[\033[0m\]\e[4m  \[\e[95m\]$(date +"%Y-%m-%d %T")\033[0m\]\e[4m  \[\e[96m\]`get_cpu`\033[0m\]\e[4m  \[\e[92m\]======================\033[0m\] \n\$ '
