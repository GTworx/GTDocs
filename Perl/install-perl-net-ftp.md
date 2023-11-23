The `perl-Net-FTP` package is an implementation of the FTP client side of the FTP protocol as defined in RFC959. It is a part of the core Perl distribution. If you're looking for the RPM package of `perl-Net-FTP`, it might be bundled as part of a larger Perl library RPM package or might have its standalone RPM, depending on the distribution.

However, in many RPM-based distributions, Perl modules are typically named in the format `perl-ModuleName`. So, for the `Net::FTP` module, it would likely be `perl-Net-FTP`.

To find out if it's installed on your system, you can use:

```
rpm -q perl-Net-FTP
```

If it's not installed and you wish to install it, you can use `yum` or `dnf`, depending on your distribution:

```
yum install perl-Net-FTP   # for older Red Hat-based distributions
```
or

```
dnf install perl-Net-FTP   # for newer Red Hat-based distributions
```

If you are unsure about the exact package name in your distribution's repositories, you can search for it:

```
yum search perl-Net-FTP   # or dnf search perl-Net-FTP
```

This should give you the exact package name if it exists in the repositories. If not, you might need to use CPAN or check if another repository needs to be added to find the package.

On openSUSE and other SUSE-based distributions, the package manager used is `zypper`.

To install the `perl-Net-FTP` package on a SUSE system:

1. **Update your repositories**:
   
   ```
   sudo zypper refresh
   ```

2. **Search for the package**:

   If you're unsure about the exact package name in the repositories, you can search for it:

   ```
   sudo zypper se perl-Net-FTP
   ```

   This will list available packages that match the search term. Identify the correct package name from the search results.

3. **Install the package**:

   Once you've identified the package name, you can install it with:

   ```
   sudo zypper in <package-name>
   ```

   Replace `<package-name>` with the exact name of the package you found in the previous step. For example, if the package is named `perl-Net-FTP`, the command would be:

   ```
   sudo zypper in perl-Net-FTP
   ```

That's it! The `perl-Net-FTP` module should now be installed on your SUSE system.

### From Steinar
```
sudo zypper install -y perl-Net-IP gcc make
sudo cpan
install Net::FTP
```

```
sudo zypper refresh
sudo zypper install -y perl-Net-IP gcc make
sudo cpan
install Net::FTP
exit
perl -e "use Net::FTP;"
perl -e "use Net::FTlagraeP;"
```

```
sudo zypper refresh
sudo zypper install -y perl-Net-IP gcc make
sudo cpan
install Net::FTP
install Net::SFTP
exit
perl -e "use Net::FTP;"
perl -e "use Net::FTlagraeP;"
```
