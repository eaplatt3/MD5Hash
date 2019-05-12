#########################################
# Earl Platt III
# 5/5/2019
# BCS 316 - Perl Programming
# MD5 Hash Part II
# Input - User Enters Username & Password
# Output - Gives User Access or Not
##########################################

use strict;
use warnings;
use Digest::MD5 qw(md5 md5_hex md5_base64);

my $username;
my $password;
my $text;
my $loginFile = 'loginfile.txt';

print "\n";
print "Enter a Username & Password";
print "\n";

print "Username: ";
$username = <STDIN>;
chomp $username;
print "\n";

print "Password: ";
$password = <STDIN>;
chomp $password;

my $md5Password = md5($password);

open(my $file, '<', $loginFile) or die;

while($text = <$file>){
	chomp $text;
	print "$text\n";
	
	if($username eq $text && $password == $text){
		print "Access Granted\n";
		}
	else {
		print "Access Denied";
		}
	
	}

close $file;


