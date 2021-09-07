## How to display banner/message before OpenSSH authentication

Want to display a message or banner before OpenSSH (SSHD server) authentication? Try this simple tip to show the  banner or ASCII logo on your Linux or Unix system.  

OpenSSH has an inbuilt configuration option called Banner.  
The contents of the specified file are sent to the remote user before authentication is allowed.  
If the Banner option is set to none then no  banner is displayed when using the ssh command or client.  
By default,  no banner is showed, and the option is disabled.  
It is also useful to display a legal notice if required by local law.

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
Another option is to use the figlet command to display large characters  made up of ordinary screen characters.  
We also have toilet command,  which prints text using large characters made of smaller characters.  
It is similar to FIGlet with additional features such as Unicode handling, color fonts, filters, and various export formats. For instance:  
`$ figlet nixCraft $ toilet -f mono12 -F metal nixCraft`  

`figlet nixCraft > /etc/ssh/my_banner`

##### To lists figlet fonts and control files, enter:
`figlist`

##### To list installed filter, type:
`toilet -F list`

## Conclusion

It is a handy little feature to spice up your terminal experience,  and it works /etc/motd too.  
We can display banner/message before OpenSSH auth prompt.  
See OpenSSH [documentation](https://www.openssh.com/manual.html) for more information or use the man command:  
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

---

# Banner examples

## 01
```
ALERT! You are entering into a secured area! Your IP, Login Time, Username has been noted and has been sent to the server administrator!
This service is restricted to authorized users only. All activities on this system are logged.
Unauthorized access will be fully investigated and reported to the appropriate law enforcement agencies.
```

## 02
```
##################################################################
#                          PRIVATE SERVER                        #
#            All connections are monitored and recorded          #
#   Disconnect IMMEDIATELY if you are not an authorized user!    #
##################################################################
```

## 03
```
Unauthorized access to this machine is prohibited.
Disconnect IMMEDIATELY if you are not an authorized user.
```

## 04
```
********************************************************************
*                                                                  *
* This system is for the use of authorized users only. Usage of    *
* this system may be monitored and recorded by system personnel.   *
*                                                                  *
* Anyone using this system expressly consents to such monitoring   *
* and is advised that if such monitoring reveals possible          *
* evidence of criminal activity, system personnel may provide the  *
* evidence from such monitoring to law enforcement officials.      *
*                                                                  *
********************************************************************
```

## 05
```
WARNING: This computer system including all related equipment, network devices (specifically including Internet access), are provided only for authorized use. 
All computer systems may be monitored for all lawful purposes, including to ensure that their use is authorized, for management of the system, to facilitate protection against unauthorized access, and to verify security procedures, survivability and operational security.

Monitoring includes active attacks by authorized personnel and their entities to test or verify the security of the system. 
During monitoring, information may be examined, recorded, copied and used for authorized purposes. 

All information including personal information, placed on or sent over this system may be monitored. 
Uses of this system, authorized or unauthorized, constitutes consent to monitoring of this system. 
Unauthorized use may subject you to criminal prosecution. Use of this system constitutes consent to monitoring for these purposes.

Evidence of any such unauthorized use collected during monitoring may be used for  administrative, criminal or other adverse action.

Use of this system constitutes consent to monitoring for these purposes.
```
