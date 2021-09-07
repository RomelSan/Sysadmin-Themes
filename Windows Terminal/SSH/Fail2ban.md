# Fail2Ban

## Installing

```
sudo apt-get update
sudo apt-get install fail2ban
```

## Configuring fail2ban

The `fail2ban` installation contains a default configuration file called `jail.conf`. This file is overwritten when `fail2ban` is upgraded, so we’ll lose our changes if we make customizations to this file.

Instead, we’ll copy the `jail.conf` file to one called `jail.local`. By  putting our configuration changes in `jail.local`, they’ll persist across  upgrades. Both files are automatically read by `fail2ban`.

```
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
```

### Edit Jail.local

Now open the file in your favorite editor. We’re going to use nano.

```
sudo nano /etc/fail2ban/jail.local
```

We’ll look for two sections in the file: [DEFAULT] and [sshd]. Take care to find the actual sections, though. Those labels also appear near the  top in a section that describes them, but that’s not what we want.

Scroll down to around line 90, and you’ll find the following four settings you need to know about:

- **ignoreip:** A whitelist of IP addresses that will never be banned. They have a permanent Get Out of Jail Free card. The localhost IP address (`127.0.0.1`) is in the list by default, along with its IPv6 equivalent (`::1`). If there are other IP addresses you know should never be banned, add them to this list and leave a space between each one.
- **bantime:** The duration for which an IP address is  banned (the “m” stands for minutes). If you type a value without an “m”  or “h” (for hours) it will be treated as seconds. A value of -1 will  permanently ban an IP address. Be very careful not to permanently lock  yourself out.
- **findtime:** The amount of time within which too many failed connection attempts will result in an IP address being banned.
- **maxretry:** The value for “too many failed attempts.”

If a connection from the same IP address makes `maxretry` failed connection attempts within the `findtime` period, they’re banned for the duration of the `bantime`. The only exceptions are the IP addresses in the `ignoreip` list.

## Configuring Jail

Jails are in folder: `/etc/fail2ban/jail.d/`

```
sudo touch /etc/fail2ban/jail.d/sshd.local
sudo chmod +x /etc/fail2ban/jail.d/sshd.local
sudo nano /etc/fail2ban/jail.d/sshd.local
```

#### sshd.local contents:

```
[sshd]
enabled = true
port = ssh
banaction = iptables
logpath = %(sshd_log)s
maxretry = 5
bantime = 24h
ignoreip = 127.0.0.1/8
```

#### Note on Action

By default, Fail2ban uses Iptables, but you can configure others.

Actions are in folder: `/etc/fail2ban/action.d/`

If you are using ufw then action inside the jail should be: (ex, for sshd)

`sudo nano /etc/fail2ban/jail.d/sshd.local`

```
action = ufw
```

##### Other Firewalls

```
iptables
ufw
firewallcmd-ipset
shorewall
nftables
```

#### Note on SSHd

It may be necessary to set `LogLevel VERBOSE` in `/etc/ssh/sshd_config` to allow full fail2ban monitoring as otherwise password failures may not be logged correctly.




## Enabling Fail2Ban

```
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
sudo systemctl status fail2ban.service
```

---

## Checking Fail2Ban Status and Bans

```
sudo fail2ban-client status
sudo fail2ban-client status sshd
```

## Unban IP

```
sudo fail2ban-client set sshd unbanip 192.168.5.25
```



---

## Jail Filters

You can activate some filters to add extra protection.

Filters tells fail2ban what to look for... so it can be better at blocking undesired traffic.

Filters are in folder: `/etc/fail2ban/filter.d`

You must activate the filters inside the jails: `/etc/fail2ban/jail.d/`

For SSH (using ufw firewall):

`sudo nano /etc/fail2ban/jail.d/sshd.local`

```
[sshd]
enabled = true
port = 22
protocol = tcp
filter = sshd
banaction = ufw
logpath = %(sshd_log)s
maxretry = 5
findtime = 4h
bantime = 7d
ignoreip = 127.0.0.1/8 192.168.1.0/24
```

### Query Regex Rules

```
fail2ban-client get sshd failregex
```

### Restarting Jail Rule

```
fail2ban-client reload sshd
```



---

## View Bans via Log

#### Group by IP and service

```
grep "Ban " /var/log/fail2ban.log | awk -F[\ \:] '{print}' | sort | uniq -c | sort -n
```

#### Group by Date

```
zgrep -h "Ban " /var/log/fail2ban.log* | awk '{print}' | sort | uniq -c
```

#### Group by IP

```
awk '($(NF-1) = /Ban/){print $NF}' /var/log/fail2ban.log | sort | uniq -c | sort -n
```

#### Count Bans

```
sudo zgrep 'Ban' /var/log/fail2ban.log* | wc -l
```

#### Report the most problematic (identifying problem subnets)

```
zgrep -h "Ban " /var/log/fail2ban.log* | awk '{print $NF}' | awk -F\. '{print $1"."$2"."}' | sort | uniq -c  | sort -n | tail
```

#### Taking a look at one of the reported problematic 

The output shows how many times those IP numbers appear in each logfile

```
zgrep -c 210.213. /var/log/fail2ban.log*
```

#### View bans from all logs

```
zgrep -h "Ban " /var/log/fail2ban.log* | awk '{print $NF}' | sort | uniq -c
```

