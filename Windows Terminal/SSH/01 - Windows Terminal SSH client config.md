# Connecting to SSH from Windows Terminal using Config File
Basically you put all your different ssh configurations in the file ~/.ssh/config

## Add the hosts to your ssh config file
From your home folder, go to the `.ssh/config` file.  
The folder may not exist if the ssh application has not been used, so it will be necessary to create it on your home folder  
`C:\Users\%USERPROFILE%\.ssh\`  

`C:\Users\%USERPROFILE%\.ssh\config`
```conf
Host vagrant
    Hostname 127.0.0.1
    Port 2222
    User vagrant
    IdentityFile ~/.ssh/vagrant.key
```
This allows the following to be run and for the options to be automatically set.  
`ssh vagrant`

### Identity Key
If you are using shared keys to login to SSH without having to use a password you can declare the key in your SSH config.  
If you are not then delete the line `IdentityFile ~/.ssh/vagrant.key`

## Profile for vagrant example
Windows Terminal Profile  
```json
        {
          "name": "Vagrant",
          "guid" : "{1777cdf0-b2c4-5a63-a204-1111f349ea7c}",
          "tabTitle" : "Vagrant",
          "icon" : "ms-appx:///ProfileIcons/{9acb9455-ca41-5af7-950f-6bca1bc9722f}.png",
          "suppressApplicationTitle": true, 
          "hidden": false,
          "closeOnExit" : true,
          "commandline": "ssh vagrant",
          "cursorColor" : "#FFFFFF",
          "cursorShape" : "bar",
          "colorScheme" : "Nord",
          "fontFace": "CaskaydiaCove NF",
          "fontSize" : 11,
          "historySize" : 9001,
          "acrylicOpacity" : 0.75,
          "padding" : "0, 0, 0, 0",
          "snapOnInput" : true,
          "startingDirectory" : "%USERPROFILE%",
          "useAcrylic" : true             
        },
```

## Setting Defaults
You can set defaults for all SSH connections by declaring an entry at the bottom of your config file.
```conf
Host *
     ForwardAgent no
     ForwardX11 no
     ForwardX11Trusted yes
     User shapeshed
     Port 22
     Protocol 2
```

## Debugging
To debug your setup run SSH in verbose mode to see the settings that are applied  
`ssh -v foobar.com`

# Direct connection without SSH config
Change the commandline value to  
`"commandline" : "ssh me@my-server -p 22 -i ~/.ssh/id_rsa"`

### Paths on Windows
If you have spaces in the folder name or in the file name then you have to use escaped quotes:  
`\"Long Path\\Here\\My File.key\"`  

The OpenSSH ssh is **nix application**, so **nix** rules apply when parsing its command-line, ex:  
`"commandline" : "ssh user@ipaddress -p 22 -i \"C:\\folder path\\myKey.key\""`

## Port Forward
Forward SOCKS proxy.  

### On the command line:
`ssh -D port_number user@host`  

### Using config file:
```
Host example.com
    User username
    Port 22
    IdentityFile ~/.ssh/id_rsa
    DynamicForward *:8080
```
To use an IPv6 address enclose the address in square brackets:  
`[2001:0db8:85a3:0000:0000:8a2e:0370:7334]:8080`

## Article Credits
https://shapeshed.com/manage-ssh-connections-with-a-ssh-config-file/
