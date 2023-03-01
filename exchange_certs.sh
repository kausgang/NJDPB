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
main_cert_path=/home/typgang/CA_CERTIFICATE
digicert_cert_path=/home/typgang/CA_CERTIFICATE/CA_CERTS

# import certificates with proper alias names from the certificate location into keystore
# ------------------------------------------------------------------------------------------
# BOX1 to Others
# box2
echo "BOX1 TO BOX2"
keytool -import -alias root_${box1}_${rundate} -file $digicert_cert_path/$box1/ty-sebtst4-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box1}_${rundate} -file $digicert_cert_path/$box1/DigiCertCA.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
# box3
echo "BOX1 TO BOX3"
keytool -import -alias root_${box1}_${rundate} -file $digicert_cert_path/$box1/ty-sebtst4-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box1}_${rundate} -file $digicert_cert_path/$box1/DigiCertCA.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
# box4
echo "BOX1 TO BOX4"
keytool -import -alias root_${box1}_${rundate} -file $digicert_cert_path/$box1/ty-sebtst4-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box1}_${rundate} -file $digicert_cert_path/$box1/DigiCertCA.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
# box5
echo "BOX1 TO BOX5"
keytool -import -alias root_${box1}_${rundate} -file $digicert_cert_path/$box1/ty-sebtst4-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box1}_${rundate} -file $digicert_cert_path/$box1/DigiCertCA.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
# box6
echo "BOX1 TO BOX6"
keytool -import -alias root_${box1}_${rundate} -file $digicert_cert_path/$box1/ty-sebtst4-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box1}_${rundate} -file $digicert_cert_path/$box1/DigiCertCA.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt

# BOX2 to Others
# box1
echo "BOX2 TO BOX1"
keytool -import -alias root_${box2}_${rundate} -file $digicert_cert_path/$box2/ty-sebtst5-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box2}_${rundate} -file $digicert_cert_path/$box2/DigiCertCA.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
# box3
echo "BOX2 TO BOX3"
keytool -import -alias root_${box2}_${rundate} -file $digicert_cert_path/$box2/ty-sebtst5-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box2}_${rundate} -file $digicert_cert_path/$box2/DigiCertCA.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
# box4
echo "BOX2 TO BOX4"
keytool -import -alias root_${box2}_${rundate} -file $digicert_cert_path/$box2/ty-sebtst5-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box2}_${rundate} -file $digicert_cert_path/$box2/DigiCertCA.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
# box5
echo "BOX2 TO BOX5"
keytool -import -alias root_${box2}_${rundate} -file $digicert_cert_path/$box2/ty-sebtst5-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box2}_${rundate} -file $digicert_cert_path/$box2/DigiCertCA.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
# box6
echo "BOX2 TO BOX6"
keytool -import -alias root_${box2}_${rundate} -file $digicert_cert_path/$box2/ty-sebtst5-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box2}_${rundate} -file $digicert_cert_path/$box2/DigiCertCA.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt

# BOX3 to Others
# box1
echo "BOX3 TO BOX1"
keytool -import -alias root_${box3}_${rundate} -file $digicert_cert_path/$box3/ty-sebtst6-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box3}_${rundate} -file $digicert_cert_path/$box3/DigiCertCA.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
# box2
echo "BOX3 TO BOX2"
keytool -import -alias root_${box3}_${rundate} -file $digicert_cert_path/$box3/ty-sebtst6-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box3}_${rundate} -file $digicert_cert_path/$box3/DigiCertCA.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
# box4
echo "BOX3 TO BOX4"
keytool -import -alias root_${box3}_${rundate} -file $digicert_cert_path/$box3/ty-sebtst6-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box3}_${rundate} -file $digicert_cert_path/$box3/DigiCertCA.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
# box5
echo "BOX3 TO BOX5"
keytool -import -alias root_${box3}_${rundate} -file $digicert_cert_path/$box3/ty-sebtst6-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box3}_${rundate} -file $digicert_cert_path/$box3/DigiCertCA.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
# box6
echo "BOX3 TO BOX6"
keytool -import -alias root_${box3}_${rundate} -file $digicert_cert_path/$box3/ty-sebtst6-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box3}_${rundate} -file $digicert_cert_path/$box3/DigiCertCA.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt

# BOX4 to Others
# box1
echo "BOX4 TO BOX1"
keytool -import -alias root_${box4}_${rundate} -file $digicert_cert_path/$box4/ty-sebtst7-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box4}_${rundate} -file $digicert_cert_path/$box4/DigiCertCA.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
# box2
echo "BOX4 TO BOX2"
keytool -import -alias root_${box4}_${rundate} -file $digicert_cert_path/$box4/ty-sebtst7-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box4}_${rundate} -file $digicert_cert_path/$box4/DigiCertCA.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
# box3
echo "BOX4 TO BOX3"
keytool -import -alias root_${box4}_${rundate} -file $digicert_cert_path/$box4/ty-sebtst7-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box4}_${rundate} -file $digicert_cert_path/$box4/DigiCertCA.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
# box5
echo "BOX4 TO BOX5"
keytool -import -alias root_${box4}_${rundate} -file $digicert_cert_path/$box4/ty-sebtst7-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box4}_${rundate} -file $digicert_cert_path/$box4/DigiCertCA.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
# box6
echo "BOX4 TO BOX6"
keytool -import -alias root_${box4}_${rundate} -file $digicert_cert_path/$box4/ty-sebtst7-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box4}_${rundate} -file $digicert_cert_path/$box4/DigiCertCA.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt

# BOX5 to Others
# box1
echo "BOX5 TO BOX1"
keytool -import -alias root_${box5}_${rundate} -file $digicert_cert_path/$box5/ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box5}_${rundate} -file $digicert_cert_path/$box5/DigiCertCA.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
# box2
echo "BOX5 TO BOX2"
keytool -import -alias root_${box5}_${rundate} -file $digicert_cert_path/$box5/ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box5}_${rundate} -file $digicert_cert_path/$box5/DigiCertCA.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
# box3
echo "BOX5 TO BOX3"
keytool -import -alias root_${box5}_${rundate} -file $digicert_cert_path/$box5/ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box5}_${rundate} -file $digicert_cert_path/$box5/DigiCertCA.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
# box4
echo "BOX5 TO BOX4"
keytool -import -alias root_${box5}_${rundate} -file $digicert_cert_path/$box5/ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box5}_${rundate} -file $digicert_cert_path/$box5/DigiCertCA.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
# box6
echo "BOX5 TO BOX6"
keytool -import -alias root_${box5}_${rundate} -file $digicert_cert_path/$box5/ty-sebtst8-ma-s_njes_state_nj_us.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box5}_${rundate} -file $digicert_cert_path/$box5/DigiCertCA.crt -keystore $main_cert_path/$box6/siebelkeystore.jks -storepass siebdev99 --noprompt

# BOX6 to Others
# box1
echo "BOX6 TO BOX1"
keytool -import -alias root_${box6}_${rundate} -file $digicert_cert_path/$box6/ty-siebweb-ha-s_njes_state_nj_us.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box6}_${rundate} -file $digicert_cert_path/$box6/DigiCertCA.crt -keystore $main_cert_path/$box1/siebelkeystore.jks -storepass siebdev99 --noprompt
# box2
echo "BOX6 TO BOX2"
keytool -import -alias root_${box6}_${rundate} -file $digicert_cert_path/$box6/ty-siebweb-ha-s_njes_state_nj_us.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box6}_${rundate} -file $digicert_cert_path/$box6/DigiCertCA.crt -keystore $main_cert_path/$box2/siebelkeystore.jks -storepass siebdev99 --noprompt
# box3
echo "BOX6 TO BOX3"
keytool -import -alias root_${box6}_${rundate} -file $digicert_cert_path/$box6/ty-siebweb-ha-s_njes_state_nj_us.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box6}_${rundate} -file $digicert_cert_path/$box6/DigiCertCA.crt -keystore $main_cert_path/$box3/siebelkeystore.jks -storepass siebdev99 --noprompt
# box4
echo "BOX6 TO BOX4"
keytool -import -alias root_${box6}_${rundate} -file $digicert_cert_path/$box6/ty-siebweb-ha-s_njes_state_nj_us.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box6}_${rundate} -file $digicert_cert_path/$box6/DigiCertCA.crt -keystore $main_cert_path/$box4/siebelkeystore.jks -storepass siebdev99 --noprompt
# box5
echo "BOX6 TO BOX5"
keytool -import -alias root_${box6}_${rundate} -file $digicert_cert_path/$box6/ty-siebweb-ha-s_njes_state_nj_us.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
keytool -import -alias intermediate_${box6}_${rundate} -file $digicert_cert_path/$box6/DigiCertCA.crt -keystore $main_cert_path/$box5/siebelkeystore.jks -storepass siebdev99 --noprompt
