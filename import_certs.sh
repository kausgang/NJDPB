# to add own certificate
# 1. go to individual folder and take backup of keystore
# 2. import certificates with proper alias names from the certificate location into keystore

# to exchange certificate
# 1. format aliasname and path of certificate. for example - box2,3,4,5,& 6's certificate will come to box1.
# alias name will be box2_<alias> and cer file path will be box2_<cer path>
# 2. import certificates with proper alias names from the certificate location into keystore
# 3. repeat this for all boxes

# for migration application, exchange box1's certificate with uweb

# RUN FROM ty-sebtst4-ma-s.njes.state.nj.us

#!/usr/bin/ksh
box1=ty-sebtst4-ma-s.njes.state.nj.us
box2=ty-sebtst5-ma-s.njes.state.nj.us
box3=ty-sebtst6-ma-s.njes.state.nj.us
box4=ty-sebtst7-ma-s.njes.state.nj.us
box5=ty-sebtst8-ma-s.njes.state.nj.us
box6=ty-siebweb-ha-s.njes.state.nj.us

rundate=$(date +"%d-%b-%Y")

# CHANGE THIS
main_cert_path=/home/sadmin/CA_CERTIFICATE
digicert_cert_path=/home/sadmin/CA_CERTIFICATE/CA_CERTS

# ADD OWN CERTIFICATE

# go to individual folder and take backup of keystore
# -----------------------------------------------------
# BOX1
cd $main_cert_path/$box1
scp siebelkeystore.jks siebelkeystore.jks_${rundate}
# BOX2
cd $main_cert_path/$box2
scp siebelkeystore.jks siebelkeystore.jks_${rundate}
# BOX3
cd $main_cert_path/$box3
scp siebelkeystore.jks siebelkeystore.jks_${rundate}
# BOX4
cd $main_cert_path/$box4
scp siebelkeystore.jks siebelkeystore.jks_${rundate}
# BOX5
cd $main_cert_path/$box5
scp siebelkeystore.jks siebelkeystore.jks_${rundate}
# BOX6
cd $main_cert_path/$box6
scp siebelkeystore.jks siebelkeystore.jks_${rundate}

# import certificates with proper alias names from the certificate location into keystore
# ------------------------------------------------------------------------------------------
# BOX1
keytool -import -alias root_${box1}_${rundate} -file $digicert_cert_path/$box1/ty-sebtst4-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99
keytool -import -alias intermediate_${box1}_${rundate} -file $digicert_cert_path/$box1/DigiCertCA.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99
# BOX2
keytool -import -alias root_${box2}_${rundate} -file $digicert_cert_path/$box2/ty-sebtst5-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99
keytool -import -alias intermediate_${box2}_${rundate} -file $digicert_cert_path/$box2/DigiCertCA.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99
# BOX3
keytool -import -alias root_${box3}_${rundate} -file $digicert_cert_path/$box3/ty-sebtst6-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99
keytool -import -alias intermediate_${box3}_${rundate} -file $digicert_cert_path/$box3/DigiCertCA.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99
# BOX4
keytool -import -alias root_${box4}_${rundate} -file $digicert_cert_path/$box4/ty-sebtst7-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99
keytool -import -alias intermediate_${box4}_${rundate} -file $digicert_cert_path/$box4/DigiCertCA.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99
# BOX5
keytool -import -alias root_${box5}_${rundate} -file $digicert_cert_path/$box5/ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99
keytool -import -alias intermediate_${box5}_${rundate} -file $digicert_cert_path/$box5/DigiCertCA.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99
# BOX6
keytool -import -alias root_${box6}_${rundate} -file $digicert_cert_path/$box6/ty-siebweb-ha-s_njes_state_nj_us.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99
keytool -import -alias intermediate_${box6}_${rundate} -file $digicert_cert_path/$box6/DigiCertCA.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99
