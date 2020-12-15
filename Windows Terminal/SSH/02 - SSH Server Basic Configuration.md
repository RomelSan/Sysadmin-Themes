# SSH Server Basic Configuration
Default SSH configuration path is `/etc/ssh`

## Configuration Changes
Change default port.  
Do not allow empty passwords  
`sudo nano /etc/ssh/sshd_config`

```conf
Port 8022
PermitEmptyPasswords no
```
After editing restart the SSH daemon to effect the changes made.  
`sudo systemctl restart sshd`

## Optional Parameters
`sudo nano /etc/ssh/sshd_config`

### Session Inactivity
SSH session will be dropped if no activity is registered after 3 minutes which is the equivalent of 180 seconds.

```
ClientAliveInterval 180
```

### Password Limit
Limit the number of SSH login attempts such that after a number of failed attempts, the connection drops. 

```
MaxAuthTries 3
```

## Check SSH Configuration
`sudo sshd -T`
