# SSH Keygen on Server
## Start the SSHd service with systemctl
```
sudo systemctl enable sshd
sudo systemctl start sshd
```

## Regenerate SSH keys
### Delete all the Host SSH keys
`sudo rm /etc/ssh/ssh_host*`

### Regenerate all the keys
Generate again all the keys, or to use only the best two then jump to the next section.
`sudo ssh-keygen -A`

## Or Regenerate best keys only
Here we pick the best two.  
Note that ed25519 is 256 bits.
```
sudo ssh-keygen -b 4096 -h -f /etc/ssh/ssh_host_rsa_key
sudo ssh-keygen -t ed25519 -h -f /etc/ssh/ssh_host_ed25519_key
```

### Check Path and Permissions
Host keys needs to be copied to `/etc/ssh`  
Permission must be to **644** for public key.   
**600** for the private key.  
The owner changed to `root:root`.
