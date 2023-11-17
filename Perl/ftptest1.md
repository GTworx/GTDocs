You can use Perl's Net::FTP module to perform FTP operations like listing files, getting files, and putting files on an FTP site. Here's a basic Perl script that demonstrates how to use Net::FTP to accomplish these tasks:

```perl
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
```

Replace `'ftp.example.com'`, `'your_username'`, `'your_password'`, and `'/remote_directory'` with your FTP server details and the desired remote directory. You can also modify the `get` and `put` operations to use different file names or paths as needed.

Make sure to install the `Net::FTP` module if it's not already installed on your Perl environment. You can typically install it using the following command:

```
cpan Net::FTP
```

Save this script to a file (e.g., `ftp_operations.pl`), make it executable with `chmod +x ftp_operations.pl`, and then run it using `./ftp_operations.pl` from the command line.