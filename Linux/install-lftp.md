To install `lftp` on SUSE Linux, you can use the Zypper package manager, which is the default package manager for SUSE-based distributions like openSUSE. Here are the steps to install `lftp`:

1. Open a terminal window. You can typically find the terminal application in your SUSE Linux desktop environment's application menu or by pressing `Ctrl+Alt+T` as a keyboard shortcut.

2. Update the package repository information to make sure you have the latest package information. Run the following command:

   ```
   sudo zypper refresh
   ```

3. Install `lftp` using the following command:

   ```
   sudo zypper install lftp
   ```

   This command will prompt you for your administrator password (sudo password). Enter it, and then confirm the installation when prompted by typing 'y' and pressing Enter.

4. Zypper will download and install the `lftp` package and its dependencies.

5. Once the installation is complete, you can verify that `lftp` is installed by running:

   ```
   lftp --version
   ```

   This command should display the version information for `lftp`, confirming that it's successfully installed.

Now you have `lftp` installed on your SUSE Linux system, and you can use it for FTP and other file transfer operations.