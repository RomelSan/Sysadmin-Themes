# SSH Login without Password

## 1. Creating SSH keys on Ubuntu 20.04
Generate keys on client.

### RSA
Generate a new 4096 bits SSH key pair with your email address as a comment by typing:  
`ssh-keygen -t rsa -b 4096 -C "your_email@domain.com" -f /home/yourusername/.ssh/ssh_host_rsa_key`  

You can add a useful comment here for ex: `-C "Login to production cluster at xyz corp"`  
If you don't want to add a comment then skip the argument `-C "your_email@domain.com"`.  

### ED25519
`sudo ssh-keygen -t ed25519 -h -f /home/yourusername/.ssh/ssh_host_ed25519_key`

## 2. Copy the Public Key to the Server
Now that you generated your SSH key pair, the next step is to copy the **public key** to the server you want to manage.  

`ssh-copy-id -i /home/yourusername/.ssh/ssh_host_ed25519_key.pub myUser@myHost`  

Once the user is authenticated, the public key `~/.ssh/ssh_host_ed25519_key.pub` will be appended to the remote user `~/.ssh/authorized_keys` file, and the connection will be closed.

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

## 3. Login to your server using SSH keys
You must use your **private key** on your client to connect to the remote server.  
`ssh -i /home/yourusername/.ssh/ssh_host_ed25519_key user@host`

## 4. Disabling SSH Initial Password Authentication
Disabling the password authentication adds an extra layer of security to your server.  

Before disabling SSH password authentication, make sure you can log in to your server without a password, and the user you are logging in with has sudo privileges.  

Open the SSH configuration file `/etc/ssh/sshd_config`  
`sudo nano /etc/ssh/sshd_config`  

Search for the following directives and modify as it follows:
```conf
PasswordAuthentication no
PermitEmptyPasswords no
ChallengeResponseAuthentication no
PubkeyAuthentication yes
```
Once you are done, save the file and restart the SSHd service by typing:  
`sudo systemctl restart sshd`

---

### Optional: Adding 2FA + Pubkey + Password = MFA
Making SSH Aware of MFA  
`sudo nano /etc/ssh/sshd_config`

```
PubkeyAuthentication yes
PasswordAuthentication no
PermitEmptyPasswords no
AuthenticationMethods publickey,password publickey,keyboard-interactive
UsePAM yes
```

**If you don't want to be asked for the password** then edit the file `/etc/pam.d/sshd`   
open the PAM `sshd` configuration file.

```bash
sudo nano /etc/pam.d/sshd
```
Find the line `@include common-auth` and comment it out by adding a `#` character as the first character on the line. This tells PAM not to prompt for a password.
```bash
. . .
# Standard Un*x authentication.
#@include common-auth
. . .
```
Save and close the file, then restart SSH.
```bash
sudo systemctl restart sshd.service
```

---

### Alternative: Pubkey + Password
Use publickey and then ask for user password.  
`sudo nano /etc/ssh/sshd_config`
```
PubkeyAuthentication yes
PasswordAuthentication no
PermitEmptyPasswords no
AuthenticationMethods publickey,password publickey,keyboard-interactive
UsePAM yes
```
open the PAM `sshd` configuration file.
```bash
sudo nano /etc/pam.d/sshd
```
Find the line `auth required pam_google_authenticator.so` and comment it out by adding a `#` character as the first character on the line. This tells PAM not to ask for TOTP.  
If you can't find the line then just make sure you have the line `@include common-auth`
```bash
. . .
# Standard Un*x authentication.
@include common-auth

# One-time password authentication via Google Authenticator
# auth required pam_google_authenticator.so
. . .
```
Save and close the file, then restart SSH.
```bash
sudo systemctl restart sshd.service
```

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

---
## For reference only - Client Login
### Add your newly generated Ed25519 private key to SSH agent
If you are using SSH agent then you must add the private key.  
`ssh-add ~/.ssh/id_ed25519`

### SSH into a Remote Server using a Key
`ssh -i ~/.ssh/id_ed25519 username@192.168.1.1`

### Get SSH connection data
Such as encryption data, connection data, debug info.  
`ssh -vv user@host`  

or with key:  
`ssh -vv -i ~/.ssh/id_ed25519 username@192.168.1.1`

---

### Credits
[Digitalocean - SSH MFA](https://www.digitalocean.com/community/tutorials/how-to-set-up-multi-factor-authentication-for-ssh-on-ubuntu-20-04)