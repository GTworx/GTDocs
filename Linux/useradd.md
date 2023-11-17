To add a user in SUSE Linux, you can use the `useradd` command in the terminal. Here's how you can do it:

1. Open a terminal window. You can typically find the terminal application in your SUSE Linux desktop environment's application menu or by pressing `Ctrl+Alt+T` as a keyboard shortcut.

2. To add a user, use the `useradd` command followed by the username you want to create. For example, to add a user named "myuser," you would run:

   ```
   sudo useradd myuser
   ```

   You'll need to run this command with superuser privileges, so you may need to prepend it with `sudo` and enter your administrator password when prompted.

3. By default, the `useradd` command will create a user without a password and a home directory. To set a password for the user and create a home directory, you can use the `passwd` and `usermod` commands like this:

   ```
   sudo passwd myuser
   sudo usermod -m -d /home/myuser myuser
   ```

   The first command (`passwd myuser`) allows you to set a password for the user "myuser." The second command (`usermod -m -d /home/myuser myuser`) specifies the home directory for the user as "/home/myuser" and moves the user's files to that directory.

4. You can also add the user to specific groups using the `usermod` command. For example, to add the user "myuser" to the "sudo" group, which grants administrative privileges, you can run:

   ```
   sudo usermod -aG sudo myuser
   ```

   Replace "sudo" with the name of the group you want to add the user to.

5. After creating the user and setting up their password and home directory, you can log in as the new user using their username and password.

Remember to replace "myuser" with the actual username you want to create. You can also customize various user attributes and settings by using additional options with the `useradd` and `usermod` commands, which you can explore in their respective manual pages (`man useradd` and `man usermod`).