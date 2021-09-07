# Copy files using SSH SCP command
scp <source> <destination>

With putty you can use `pscp`

## Under Windows
### Transfer From Linux to Windows
```bash
# Single File
scp username@from_host_ip:/home/ubuntu/myfile /D:/Data/Desktop

# All Files
scp -r username@from_host_ip:/home/ubuntu/* /D:/Data/Desktop
```

### Transfer From Windows to Linux
```bash
# Single File
scp /D:/Data/Desktop/file.txt username@ipaddress:/folder/file.txt

# All Files
scp -r /D:/Data/Desktop/* username@from_host_ip:/home/ubuntu
```

### GUI
Download WinSCP https://winscp.net
