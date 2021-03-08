# MOTD
Modifying the `/etc/motd` file is fast and effective way on how to quickly change the welcome message.  
However, for more elaborate configuration it is recommended to customize the MOTD via scripts located within the `/etc/update-motd.d` directory.

## How to disable motd message
The system administrator can disable one or more parts of the MOTD message output by removing the executable permissions of each relevant MOTD script.  
To disable all scripts entirely execute:  
`sudo chmod -x /etc/update-motd.d/*`

---

## Example file to show contents of ascii.txt
`sudo nano /etc/update-motd.d/01-ascii`
```bash
#!/bin/sh
cat /etc/update-motd.d/ascii.txt
```
`sudo chmod +x 01-ascii`

### Just show the important things...
```bash
cd /etc/update-motd.d
sudo chmod +x 97-overlayroot
sudo chmod +x 98-fsck-at-reboot
sudo chmod +x 98-reboot-required
```

### Showing server data
```bash
sudo chmod +x 50-landscape-sysinfo
```

### example of ascii.txt content
```txt
_    ___    ___    ___    ___            
_`| / __`| / __`| / __`| / .-^  ___       
---/ /----/ /----/ /----/ /--=^^   ^^=,
--/ /----/ /----/ /----/ /---=__   __=' 
|._/   |._/   |._/   |._/       ^^^        

                        "My Server Name"
                           (192.168.0.2)
                            --- My Nickname
```



---

## Disabling Motd News

Disabling the news part (the pingback to canonical) is simple. Edit the following file:

`vim /etc/default/motd-news`

Change `ENABLED=1` to `ENABLED=0`

That's it for the small news part. If you don't want to see the other messages you need to disable those as well.

```bash
chmod -x /etc/update-motd.d/80-livepatch
chmod -x /etc/update-motd.d/51-cloudguest
chmod -x /etc/update-motd.d/10-help-text
```

#### Disabling dynamic motd entirely

```bash
sudo systemctl list-unit-files | grep motd

sudo systemctl disable motd-news.timer
sudo systemctl disable motd-news.service
sudo systemctl stop motd-news.service
```

reboot and done.

