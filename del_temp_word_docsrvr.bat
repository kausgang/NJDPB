@REM Cleanup all tmp file(with extension .tmp) from ENTIRE MACHINE (not just one place/directory) including the HIDDEN temp files as this is commonly ignored in search criteria. This will clear out any word related issues. Reboot the machine as soon as practical and try the document generation.

@REM This KB doc explains about all the different temp files word creates. http://support.microsoft.com/kb/211632

@REM Sometimes the Windows GUI search is not reliable so check with command prompt to confirm,

@REM dir /S C:\*.tmp
@REM dir /S /AH C:\*.tmp

@REM Batch Script that can be of use but use caution as it will delete if there is any extension like tmpl file as well. Best is to delete from UI.

@REM @ECHO OFF
@REM REM - BATCH TO DELETE WORD TEMP FILES.
@REM del /Q /S /F C:\*.tmp
@REM del /Q /S /F /AH C:\*.tmp
@REM exit


dir /S C:\*.tmp > C:\Users\sadmin\Desktop\TEMP_REPORT_1.txt
dir /S /AH C:\*.tmp > C:\Users\sadmin\Desktop\TEMP_REPORT_2.txt

ECHO inspect TEMP_REPORT_1 and TEMP_REPORT_2 files on DESKTOP manually and delete tmp files
pause