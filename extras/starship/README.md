# Setup Starship Shell

https://starship.rs/

Download From:

https://github.com/starship/starship

## Windows

**Powershell**

Open powershell configuration file:

```powershell
code $PROFILE

start notepad++ $PROFILE
```

Add the following to the end of your PowerShell configuration (find it by running `$PROFILE`):

```powershell
$ENV:STARSHIP_CONFIG = "$HOME\.starship\starship.toml"
$ENV:STARSHIP_DISTRO = "󰖳 core "
Invoke-Expression (&starship init powershell)
```

Copy the file starship.toml to

```
# On windows
# %USERPROFILE%\.starship\starship.toml
```

**CMD**

You need to use [Clink](https://chrisant996.github.io/clink/clink.html)[ ](https://chrisant996.github.io/clink/clink.html) (v1.2.30+) with Cmd. Add the following to a file `starship.lua` and place this file in Clink scripts directory:

%USERPROFILE%\AppData\Local\clink

```lua
-- starship.lua

os.setenv('STARSHIP_CONFIG', 'C:\\Users\\Tatsuya\\AppData\\Local\\clink\\starship.toml')
os.setenv('STARSHIP_DISTRO', ' core ')
load(io.popen('starship init cmd'):read("*a"))()
```

Copy the file starship.toml to

```bash
# On windows
# %USERPROFILE%\AppData\Local\clink\starship.toml
```

To run the clink cmd instance without logo in command set or type:

```bash
"C:\Program Files (x86)\clink\clink.bat" startmenu --profile ~\clink --quiet
```

```bash
cmd.exe /s /k ""C:\Program Files (x86)\clink\clink_x64.exe" inject --profile ~\clink --quiet"
```

For Windows Terminal you can use

```bash
"commandline": "cmd.exe /s /k \"\"C:\\Program Files (x86)\\clink\\clink_x64.exe\" inject --profile ~\\clink --quiet\"",
```

example:

```bash
			{
				"colorScheme": "Serendipity Midnight",
				"commandline": "cmd.exe /s /k \"\"C:\\Program Files (x86)\\clink\\clink_x64.exe\" inject --profile ~\\clink --quiet\"",
				"guid": "{ed8f4d54-a8db-4628-ab4f-317cc6469b07}",
				"hidden": false,
				"startingDirectory": "C:\\",
				"cursorShape": "filledBox",
				"font": 
                {
                    "face": "CaskaydiaCove NF",
                    "size": 11
                },
				"name": "clink",
				"tabTitle": "clink",
				
			},
```

## Linux

Download Installer from the github or install with one command:

```bash
curl -sS https://starship.rs/install.sh | sh
```

 **Zsh**

Add the following to the end of `~/.zshrc`:

```bash
# Starship
export STARSHIP_DISTRO=" "
export STARSHIP_DEVICE="debian"
eval "$(starship init zsh)"
```

**bash**
Add the following to the end of ~/.bashrc:

```bash
# Starship
export STARSHIP_DISTRO=" "
export STARSHIP_DEVICE="debian"
eval "$(starship init bash)"
```



**Create Configuration File / Or Copy the file starship linux.toml to**

```bash
nano ~/.config/starship.toml
```

**Reset Bash Source**

```bash
cd
source .bashrc
```


