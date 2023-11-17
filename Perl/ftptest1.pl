#!/usr/bin/perl

use strict;
use warnings;
use Net::FTP;

# FTP server details
my $ftp_server = 'ftp.example.com';
my $ftp_user   = 'your_username';
my $ftp_pass   = 'your_password';

# Create an FTP object and connect to the server
my $ftp = Net::FTP->new($ftp_server) or die "Could not connect to $ftp_server: $!";
$ftp->login($ftp_user, $ftp_pass) or die "Login failed: " . $ftp->message;

# List files in the remote directory
$ftp->cwd('/remote_directory'); # Change to the desired remote directory
my @files = $ftp->ls() or die "Failed to list files: " . $ftp->message;
print "Remote files:\n";
foreach my $file (@files) {
    print "$file\n";
}

# Get a file from the remote server
my $remote_file = 'remote_file.txt';
my $local_file  = 'local_file.txt';
$ftp->get($remote_file, $local_file) or die "Failed to get $remote_file: " . $ftp->message;
print "Downloaded $remote_file to $local_file\n";

# Put a file to the remote server
my $local_file2  = 'local_file2.txt';
my $remote_file2 = 'remote_file2.txt';
$ftp->put($local_file2, $remote_file2) or die "Failed to put $local_file2: " . $ftp->message;
print "Uploaded $local_file2 to $remote_file2\n";

# Disconnect from the FTP server
$ftp->quit;

# Exit the script
exit;
