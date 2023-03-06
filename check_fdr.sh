echo halsey3
halsey3=$(ls -l /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr | wc -l)
if [[ $halsey3 -ge 1 ]]; then
    echo "fdr file is created in halsey03" | mail -s "FDR - halsey03" Kaustav.Ganguli@treas.nj.gov,Vid.Dikert@treas.nj.gov,Sukumar.Mididodi@treas.nj.gov
    scp -p -r /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/FDR_FILES/
    rm /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr
fi

echo halsey4
halsey4=$(ssh -q sadmin@halsey04 'ls -l /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr | wc -l')
if [[ $halsey4 -ge 1 ]]; then
    echo "fdr file is created in halsey04" | mail -s "FDR - halsey04" Kaustav.Ganguli@treas.nj.gov,Vid.Dikert@treas.nj.gov,Sukumar.Mididodi@treas.nj.gov
    ssh -q sadmin@halsey04 'scp -p -r /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/FDR_FILES/'
    ssh -q sadmin@halsey04 'rm /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr'
fi

echo halsey5
halsey5=$(ssh -q sadmin@halsey05 'ls -l /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr | wc -l')
if [[ $halsey5 -ge 1 ]]; then
    echo "fdr file is created in halsey05" | mail -s "FDR - halsey05" Kaustav.Ganguli@treas.nj.gov,Vid.Dikert@treas.nj.gov,Sukumar.Mididodi@treas.nj.gov
    ssh -q sadmin@halsey05 'scp -p -r /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/FDR_FILES/'
    ssh -q sadmin@halsey05 'rm /siebprod5/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr'
fi

echo halsey6
halsey6=$(ssh -q sadmin@halsey06 'ls -l /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr | wc -l')
if [[ $halsey6 -ge 1 ]]; then
    echo "fdr file is created in halsey06" | mail -s "FDR - halsey06" Kaustav.Ganguli@treas.nj.gov,Vid.Dikert@treas.nj.gov,Sukumar.Mididodi@treas.nj.gov
    ssh -q sadmin@halsey06 'scp -p -r /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/FDR_FILES/'
    ssh -q sadmin@halsey06 'rm /siebprod1/siebel/8.2.2.0.0/ses/siebsrvr/bin/*.fdr'
fi
