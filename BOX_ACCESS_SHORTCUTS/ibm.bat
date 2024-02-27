@ECHO OFF

rem start rdp.exe /f /v:10.14.103.167 /u:ibmtypgang\typgang /p:rS_32157@nEw&Kolkata#1

REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%


echo %NL%"Enter uername as ibmtypgang\typgang and password as rS_32157@nEw&Kolkata#1 when prompted on remote server"
pause
cmdkey /generic:10.14.103.167 /user:ibmtypgang\typgang /pass:"rS_32157@nEw&Kolkata#1"
mstsc /f /v:10.14.103.167