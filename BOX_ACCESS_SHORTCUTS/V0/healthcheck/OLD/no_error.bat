echo noerror > check.txt
putty.exe -l sadmin -pw siebdev99 -load "prod" -m no_error.txt
exit