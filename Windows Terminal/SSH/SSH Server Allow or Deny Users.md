## Allow Or Deny SSH Access To A Particular User Or Group In Linux
`sudo nano /etc/ssh/sshd_config`

### Add or edit the following line:
`AllowUsers myUserName`

### You can also specify more than one user as shown below.
`AllowUsers myUserName otherUser`

### To allow an entire group, say for example root, add/edit the following line:
`AllowGroups root`

### Deny SSH Access to a user or group
```
DenyUsers myUserName
DenyGroups root
```
Root ssh access is considered a bad practice in terms of security.  
Find the following line, Uncomment it, and set the value to no.  
`PermitRootLogin no`
