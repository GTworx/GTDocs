The `.netrc` file is used to store login credentials for FTP (File Transfer Protocol) and other network services. It allows you to automate the login process when connecting to FTP servers. Here's how you can maintain a `.netrc` file with FTP user and password information:

1. Open a terminal window.

2. Create or edit the `.netrc` file in your home directory. You can use a text editor of your choice, such as `nano`, `vim`, or `gedit`. For example:

   ```
   nano ~/.netrc
   ```

3. In the `.netrc` file, add the following lines, replacing `ftp.example.com` with the FTP server's hostname, `your-ftp-username` with your FTP username, and `your-ftp-password` with your FTP password:

   ```
   machine ftp.example.com
   login your-ftp-username
   password your-ftp-password
   ```

   You can add multiple entries for different FTP servers if needed.

4. Save the changes and exit the text editor. In `nano`, you can do this by pressing `Ctrl+O` to save and `Ctrl+X` to exit.

5. Make sure that the `.netrc` file is only readable by you to protect your credentials. You can set appropriate file permissions with the following command:

   ```
   chmod 600 ~/.netrc
   ```

   This command restricts access to the file so that only you (the owner) can read and write it.

6. Now, when you use an FTP client or the `lftp` command-line tool, it will automatically look for the `.netrc` file and use the credentials specified in the file to log in to the FTP server without requiring you to enter them manually.

Keep in mind that storing passwords in plaintext files like `.netrc` can be a security risk, so it's essential to protect the file's permissions and ensure that it's not accessible by unauthorized users. Additionally, consider using secure FTP protocols like SFTP or FTPS, which provide encryption for your FTP connections and are generally more secure than standard FTP.