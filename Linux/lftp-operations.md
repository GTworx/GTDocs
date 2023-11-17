To perform FTP and SFTP operations using the `lftp` command-line utility in a Perl script, you can use Perl's `system` function to execute `lftp` commands. Here's an example of a Perl script that uses `lftp` to perform FTP and SFTP operations:

```perl
#!/usr/bin/perl

use strict;
use warnings;

# FTP server details
my $ftp_server = 'ftp.example.com';
my $ftp_user   = 'your_ftp_username';
my $ftp_pass   = 'your_ftp_password';

# SFTP server details
my $sftp_server = 'sftp.example.com';
my $sftp_user   = 'your_sftp_username';
my $sftp_key    = '/path/to/your/ssh/key.pem';

# Remote and local file paths
my $remote_directory = '/remote_directory';
my $remote_file      = 'remote_file.txt';
my $local_file       = 'local_file.txt';

# FTP LS command
my $ftp_ls_command = "lftp -u $ftp_user,$ftp_pass $ftp_server -e 'ls $remote_directory'";

# SFTP LS command
my $sftp_ls_command = "lftp -e 'set sftp:auto-confirm yes; open sftp://$sftp_user:$sftp_key\@$sftp_server; cd $remote_directory; ls'";

# FTP GET command
my $ftp_get_command = "lftp -u $ftp_user,$ftp_pass $ftp_server -e 'get $remote_directory/$remote_file -o $local_file'";

# SFTP GET command
my $sftp_get_command = "lftp -e 'set sftp:auto-confirm yes; open sftp://$sftp_user:$sftp_key\@$sftp_server; cd $remote_directory; get $remote_file -o $local_file'";

# FTP PUT command
my $ftp_put_command = "lftp -u $ftp_user,$ftp_pass $ftp_server -e 'put $local_file -o $remote_directory/$remote_file'";

# SFTP PUT command
my $sftp_put_command = "lftp -e 'set sftp:auto-confirm yes; open sftp://$sftp_user:$sftp_key\@$sftp_server; cd $remote_directory; put $local_file -o $remote_directory/$remote_file'";

# Perform FTP LS
system($ftp_ls_command);

# Perform SFTP LS
system($sftp_ls_command);

# Perform FTP GET
system($ftp_get_command);

# Perform SFTP GET
system($sftp_get_command);

# Perform FTP PUT
system($ftp_put_command);

# Perform SFTP PUT
system($sftp_put_command);
```

Replace `'ftp.example.com'`, `'your_ftp_username'`, `'your_ftp_password'`, `'sftp.example.com'`, `'your_sftp_username'`, `'your_sftp_key.pem'`, `'/remote_directory'`, `'remote_file.txt'`, `'local_file.txt'`, and adjust the various `lftp` commands as needed to match your specific FTP and SFTP server setup and requirements.

Make sure you have `lftp` installed on your system to use this script. You can install it using your system's package manager or download it from the official website: https://lftp.yar.ru/

Save this script to a file (e.g., `lftp_operations.pl`), make it executable with `chmod +x lftp_operations.pl`, and then run it using `./lftp_operations.pl` from the command line.