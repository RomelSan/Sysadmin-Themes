# Setup Starship Shell

https://starship.rs/

Download From:

https://github.com/starship/starship

## Windows

Then open powershell configuration file:

```powershell
code $PROFILE

notepad++ $PROFILE
```

Add the following to the end of your PowerShell configuration (find it by running `$PROFILE`):

```powershell
$ENV:STARSHIP_CONFIG = "$HOME\.starship\starship.toml"
$ENV:STARSHIP_DISTRO = "者 core "
Invoke-Expression (&starship init powershell)
```

Copy the file starship.toml to

```
# On windows
# $HOME\.starship\config.toml
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



