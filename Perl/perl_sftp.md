To perform SFTP (SSH File Transfer Protocol) operations in Perl, you can use the Net::SFTP module. Here's a Perl script that demonstrates how to use Net::SFTP to list files, get files, and put files on an SFTP server:

```perl
#!/usr/bin/perl

use strict;
use warnings;
use Net::SFTP;

# SFTP server details
my $sftp_host = 'sftp.example.com';
my $sftp_user = 'your_username';
my $sftp_pass = 'your_password';

# Create an SFTP object and connect to the server
my $sftp = Net::SFTP->new($sftp_host, user => $sftp_user, password => $sftp_pass) or die "Could not connect to $sftp_host: $!";

# List files in the remote directory
my $remote_directory = '/remote_directory'; # Change to the desired remote directory
my @files = $sftp->ls($remote_directory) or die "Failed to list files: " . $sftp->error;
print "Remote files:\n";
foreach my $file (@files) {
    print $file->{filename} . "\n";
}

# Get a file from the remote server
my $remote_file = "$remote_directory/remote_file.txt";
my $local_file  = 'local_file.txt';
$sftp->get($remote_file, $local_file) or die "Failed to get $remote_file: " . $sftp->error;
print "Downloaded $remote_file to $local_file\n";

# Put a file to the remote server
my $local_file2  = 'local_file2.txt';
my $remote_file2 = "$remote_directory/remote_file2.txt";
$sftp->put($local_file2, $remote_file2) or die "Failed to put $local_file2: " . $sftp->error;
print "Uploaded $local_file2 to $remote_file2\n";

# Disconnect from the SFTP server
$sftp->disconnect;

# Exit the script
exit;
```

Replace `'sftp.example.com'`, `'your_username'`, `'your_password'`, and `'/remote_directory'` with your SFTP server details and the desired remote directory. You can also modify the `get` and `put` operations to use different file names or paths as needed.

Make sure to install the `Net::SFTP` module if it's not already installed on your Perl environment. You can typically install it using the following command:

```
cpan Net::SFTP
```

Save this script to a file (e.g., `sftp_operations.pl`), make it executable with `chmod +x sftp_operations.pl`, and then run it using `./sftp_operations.pl` from the command line.