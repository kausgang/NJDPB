#!/usr/bin/perl

use LWP::Simple;

$url="https://snja62.sa.state.nj.us:7002/xmlpserver/";
#$email_to = 'kaustav.ganguli@treas.nj.gov,Sukumar.Mididodi@treas.nj.gov,Luann.Born@treas.nj.gov';
$email_to = 'kaustav.ganguli@treas.nj.gov';

print head($url);

if (! head($url)) {
  #die "The Server is DOWN!!!!"
  $subject = "The BIP Server is DOWN!!!!"
}
else{
$subject = "The BIP Server is WORKING!!!!"

}



#$from = 'webmaster@yourdomain.com';
$from = 'BIP-Healthcheck@halsey03';
$message = 'BIP URL could be accessed with Perl';

open(MAIL, "|/usr/sbin/sendmail -t");

# Email Header
print MAIL "To: $email_to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n\n";
# Email Body
#print MAIL $message;

close(MAIL);
print "Email Sent Successfully\n";

