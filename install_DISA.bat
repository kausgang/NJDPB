@ECHO OFF

@REM Remove local temp folder if exists
if exist c:\disa_temp rd /s /q c:\disa_temp

@REM go to installation location
pushd "\\tretvsccmpri01\Software Repository\Pensions\DISA\"

@REM copy installer to local
md c:\disa_temp
xcopy /e /k /h /i .\DISA c:\disa_temp\

@REM go to disa_temp and uninsall
c:
cd c:\disa_temp
taskkill /f /im javaw.exe
start /B .\jre\bin\java -cp C:\DISA\Uninstall\uninstaller.jar uninstall -i silent


@REM wait for un-installation to finish
echo "Waiting for 60s"
timeout 60 > NUL

@REM kill uninstall process
taskkill /f /im java.exe



@REM Remove c:\disa
rd /s /q c:\DISA
@REM remove disa_gradle
rd /s /q C:\Disa_gradle
@REM remove "Zero G Registry" folder from C:\Program Files and C:\program files(86)
rd /s /q "C:\Program Files\Zero G Registry"
rd /s /q "C:\Program Files (x86)\Zero G Registry"




@REM Install DISA
c:\disa_temp\Desktop_Integration_Siebel_Agent.exe -i silent -f c:\disa_temp\response.txt


@REM wait for 30 sec
echo "Waiting for 30s"
timeout 30 > NUL


@REM Install certificates
C:
cd /
set JAVA_HOME=C:\DISA\jre
set PATH=%JAVA_HOME%\bin:%PATH%
cd C:\DISA\jre\bin
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	Devserver.njes.state.nj.us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	DigiCertCA_IP16 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	DigiCertCA_IP22 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	DigiCertGlobalRootCA -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	GeoTrustRSACA2018 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	IP16root2023 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	IP22root2023 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	SNJA55 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	snja55_njes_state_nj_us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	snja61 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	snja61_pa_state_nj_us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	SNJA65 -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	snja65_pa_state_nj_us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	ty-sebtst8-ma-s.njes.state.nj.us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	ty-sebtst8-ma-s_njes_state_nj_us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	ty-Siebl01-h1-e -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	ty-siebl01-h1-e_pa_state_nj_us -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	ty-Siebl10-h1-s -storepass changeit
keytool.exe -delete -keystore "C:\DISA\jre\lib\security\cacerts" -alias	ty-siebl10-h1-s_pa_state_nj_us -storepass changeit


keytool.exe -import -noprompt -trustcacerts -alias DigiCertCA_IP16 -file c:\disa_temp\DISA_Certificates\DigiCertCA_IP16.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias DigiCertCA_IP22 -file c:\disa_temp\DISA_Certificates\DigiCertCA_IP22.crt  -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias DigiCertGlobalRootCA -file c:\disa_temp\DISA_Certificates\DigiCertGlobalRootCA.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias GeoTrustRSACA2018 -file c:\disa_temp\DISA_Certificates\GeoTrustRSACA2018.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias IP16root2023 -file c:\disa_temp\DISA_Certificates\IP16root2023.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias Devserver.njes.state.nj.us -file c:\disa_temp\DISA_Certificates\Devserver.njes.state.nj.us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias IP22root2023 -file c:\disa_temp\DISA_Certificates\IP22root2023.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias SNJA55 -file c:\disa_temp\DISA_Certificates\SNJA55.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias snja55_njes_state_nj_us -file c:\disa_temp\DISA_Certificates\snja55_njes_state_nj_us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias snja61 -file c:\disa_temp\DISA_Certificates\snja61.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias snja61_pa_state_nj_us -file c:\disa_temp\DISA_Certificates\snja61_pa_state_nj_us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias SNJA65 -file c:\disa_temp\DISA_Certificates\SNJA65.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias snja65_pa_state_nj_us -file c:\disa_temp\DISA_Certificates\snja65_pa_state_nj_us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias ty-sebtst8-ma-s.njes.state.nj.us -file c:\disa_temp\DISA_Certificates\ty-sebtst8-ma-s.njes.state.nj.us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias ty-sebtst8-ma-s_njes_state_nj_us -file c:\disa_temp\DISA_Certificates\ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias ty-Siebl01-h1-e -file c:\disa_temp\DISA_Certificates\ty-Siebl01-h1-e.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias ty-siebl01-h1-e_pa_state_nj_us -file c:\disa_temp\DISA_Certificates\ty-siebl01-h1-e_pa_state_nj_us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias ty-Siebl10-h1-s -file c:\disa_temp\DISA_Certificates\ty-Siebl10-h1-s.cer -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit
keytool.exe -import -noprompt -trustcacerts -alias ty-siebl10-h1-s_pa_state_nj_us -file c:\disa_temp\DISA_Certificates\ty-siebl10-h1-s_pa_state_nj_us.crt -keystore "C:\DISA\jre\lib\security\cacerts" -storepass changeit

copy c:\disa_temp\config.properties C:\DISA\DesktopIntSiebelAgent\

@REM Remove temp install folder
cd \
rd /s /q c:\disa_temp

@REM relaunch disa
taskkill /f /im javaw.exe
echo "Waiting for 10s"
timeout 10 > NUL
C:\DISA\DesktopIntSiebelAgent\disa.exe






