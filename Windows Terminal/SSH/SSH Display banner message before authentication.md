## How to display banner/message before OpenSSH authentication

Want to display a message or banner before OpenSSH (SSHD server) authentication? Try this simple tip to show the  banner or ASCII logo on your Linux or Unix system.

 OpenSSH has an inbuilt configuration option called Banner.  The contents of the specified file are sent to the remote user before authentication is allowed.  If the Banner option is set to none then no  banner is displayed when using the ssh command or client.  By default,  no banner is showed, and the option is disabled. It is also useful to display a legal notice if required by local law.

1. Log in to remote Linux and Unix server.
2. Edit the /etc/ssh/sshd_config file.
3. Add/edit config option. For example: Banner /etc/ssh/my_banner
4. Save and close the file. 
5. Make sure you create a new file called /etc/ssh/my_banner file.
6. [Reload sshd service](https://www.cyberciti.biz/faq/how-do-i-restart-sshd-daemon-on-linux-or-unix/). For instance:
      `# Linux # sudo systemctl reload ssh.service # FreeBSD # sudo /etc/rc.d/sshd restart # OpenBSD # doas /etc/rc.d/sshd restart`   

## Sample banner/message file for sshd

Here is my file displayed using the [cat command](https://www.cyberciti.biz/faq/linux-unix-appleosx-bsd-cat-command-examples/):
 `$ cat /etc/ssh/my_banner `

### Where can I find ASCII art?

Use your favorite search engine and type:
 `ASCII art`
 Another option is to use the figlet command to display large characters  made up of ordinary screen characters. We also have toilet command,  which prints text using large characters made of smaller characters. It  is similar to FIGlet with additional features such as Unicode handling,  color fonts, filters, and various export formats. For instance:
 `$ figlet nixCraft $ toilet -f mono12 -F metal nixCraft `

`figlet nixCraft > /etc/ssh/my_banner`

##### To lists figlet fonts and control files, enter:
`figlist`

##### To list installed filter, type:
`toilet -F list`

## Conclusion

It is a handy little feature to spice up your terminal experience,  and it works /etc/motd too. We can display banner/message before OpenSSH auth prompt. See OpenSSH [documentation](https://www.openssh.com/manual.html) for more information or use the man command:
 `$ man 5 sshd_config $ man sshd`

## Credits

https://www.cyberciti.biz/howto/quick-tip-display-banner-message-before-openssh-authentication/



---

### Running figlet / toilet automatically

Add command to your ~/.bashrc command so that banner get displayed every time you open terminal or console:

```
echo 'echo "Welcome to"' >> ~/.bashrc
echo 'toilet -f mono12 -F metal nixCraft' >> ~/.bashrc
```

