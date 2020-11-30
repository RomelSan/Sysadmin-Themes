# SSH Login without Password

## Creating SSH keys on Ubuntu 20.04
Generate keys on client.

### RSA
Generate a new 4096 bits SSH key pair with your email address as a comment by typing:  
`ssh-keygen -t rsa -b 4096 -C "your_email@domain.com" -f /home/yourusername/.ssh/ssh_host_rsa_key`  

You can add a useful comment here for ex: `-C "Login to production cluster at xyz corp"`  
If you don't want to add a comment then skip the argument `-C "your_email@domain.com"`.  

### ED25519
`sudo ssh-keygen -t ed25519 -h -f /home/yourusername/.ssh/ssh_host_ed25519_key`

## Copy the Public Key to the Server
Now that you generated your SSH key pair, the next step is to copy the **public key** to the server you want to manage.  

`ssh-copy-id -i /home/yourusername/.ssh/ssh_host_ed25519_key.pub myUser@myHost`  

### If you don't have ssh-copy-id
If by some reason the `ssh-copy-id` utility is not available on your local computer, you can use the following command to  

**copy the public key on linux:**  
```bash
cat ~/.ssh/id_rsa.pub | ssh remote_username@server_ip_address "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
```

**copy the public key on Windows Powershell:**
```powershell
type myKey.pub | ssh {IP-ADDR-OR-FQDN} "cat >> .ssh/authorized_keys"
```

---

## Login to your server using SSH keys
You must use your **private key** on your client to connect to the remote server.  
`ssh -i /home/yourusername/.ssh/ssh_host_ed25519_key user@host`

## Disabling SSH Password Authentication
Disabling the password authentication adds an extra layer of security to your server.  

Before disabling SSH password authentication, make sure you can log in to your server without a password, and the user you are logging in with has sudo privileges.  

Open the SSH configuration file `/etc/ssh/sshd_config`  
`sudo nano /etc/ssh/sshd_config`  

Search for the following directives and modify as it follows:
```conf
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
```
Once you are done, save the file and restart the SSH service by typing:  
`sudo systemctl restart ssh`

--- 
# Optional
## Only allow incoming ED25519 sessions:
Put the lines at the end of the file `sshd_config`.  
`sudo nano /etc/ssh/sshd_config`
```
CASignatureAlgorithms ssh-ed25519
HostbasedAcceptedKeyTypes ssh-ed25519
PubkeyAcceptedKeyTypes ssh-ed25519-cert-v01@openssh.com,ssh-ed25519
```
