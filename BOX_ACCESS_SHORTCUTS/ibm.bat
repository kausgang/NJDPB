@ECHO OFF

rem start rdp.exe /f /v:10.14.103.178 /u:10.14.103.178\kaustav /p:rS_32157@nEw&Kolkata@50

REM Creating a Newline variable (the two blank lines are required!)
set NLM=^


set NL=^^^%NLM%%NLM%^%NLM%%NLM%


echo %NL%"Enter uername as 10.14.103.178\kaustav and password as rS_32157@nEw&Kolkata@50 when prompted on remote server"
pause
cmdkey /generic:10.14.103.178 /user:10.14.103.178\kaustav /pass:"rS_32157@nEw&Kolkata@50"
mstsc /f /v:10.14.103.178