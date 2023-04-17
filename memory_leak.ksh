#!/bin/ksh

get_pid_list() {
    pids=$(ps -ef | egrep 'siebproc|siebmts|siebsvc' | grep -v grep | awk '{print $2}')
}

while true; do
    get_pid_list
    for pid in $(echo $pids); do
        timestamp=$(date '+%m/%d/%y %H:%M:%S')
        stats=$(ps -p $pid -o pid,vsz,user,cpu,thcount,comm | grep -v "PID")
        check=$(echo $stats | wc -l)
        skip_flag=0
        if [ $check -eq 0 ]; then
            # This is to exit the loop in case the process is no longer available
            skip_flag=1
            break
        fi
        echo $timestamp" "$stats >>ps.$pid.log
        #RUN SRVRMGR LIST COMMAND
        . /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/siebenv.sh
        echo $timestamp >>list_task.txt
        echo "===============================\n" >>list_task.txt
        srvrmgr -g halsey06.sa:2320 -e SBAPRD_82 -u sadmin -p siebprod99 -s siebappprd2 -c "list tasks for comp PSCcObjMgr_enu" -q >>list_task.txt

    done
    if [ $skip_flag -eq 0 ]; then
        sleep 600
    fi
done
