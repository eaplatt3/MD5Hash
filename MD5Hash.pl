##########################################
# Earl Platt III
# 5/5/2019
# BCS 316 - Perl Programming
# MD5 Hash
# Input - User Enters Username & Password
# Output - Gives Access or not
##########################################

use strict;
use warnings;
use Digest::MD5 qw(md5 md5_hex md5_base64);

my $username;
my $password;
my $loginFile = 'loginfile.txt'

print "\n";
print "Enter a Username & Password";
print "\n";

print "Username: ";
$username = <STDIN>;
print "\n";

print "Password: ";
$password = <STDIN>;

my $md5Password = md5($password);

open(my $file, '>', $loginFile) or die;

print $file "$username";
print $file "$md5Password";

close $file;


