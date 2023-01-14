# Set up Powerline in PowerShell

Preview:  
![Demo 01](G:\Windows Folders2\Documents\GitHub\Sysadmin Themes\Windows Terminal\PowerLine for Powershell\screenshot.png)

## PowerShell prerequisites

Install Windows Terminal: https://github.com/microsoft/terminal/releases  
Install Git for Windows if installing Posh-Git: https://git-scm.com/downloads  
Install `Cascadia Code PL` Font: https://github.com/microsoft/cascadia-code/releases  

## Optional - Install Terminal Icons

```powershell
Install-Module terminal-icons -Scope CurrentUser
```

Note: To update a module use the command: `Update-Module`

## Installing Oh My Posh:

Open a PowerShell prompt and run the following command:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
```

Or install the executable "install-amd64.exe" download from: https://github.com/JanDeDobbeleer/oh-my-posh/releases

Optional: add the full patch to AV exception

```powershell
(Get-Command oh-my-posh).Source
```

### Themes - Reference

You can find the themes in the folder indicated by the environment variable `POSH_THEMES_PATH`. For example, you can use

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json"
```

 for the prompt initialization in PowerShell.

### Get Shell - Reference

If you have no idea which shell you're currently using, Oh My Posh has a utility switch that can tell that to you.

```powershell
oh-my-posh get shell
```

## Customize your PowerShell prompt

Open your PowerShell profile with a code editor:  
```powershell
code $PROFILE

notepad $PROFILE

notepad++ $PROFILE
```

or the text editor of your choice.
This is not your Windows Terminal profile.
Your PowerShell profile is a script that runs every time PowerShell starts.

When the above command gives an error, make sure to create the profile first.

```powershell
New-Item -Path $PROFILE -Type File -Force
```

Then add the line - You should have this:

```powershell
# Theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_rainbow.omp.json" | Invoke-Expression

# Terminal Icons Module
Import-Module terminal-icons
```

Reload the profile:

```
. $PROFILE
```

### Edit Windows Terminal profile:

Open **Windows Terminal** Settings.

```json
{
    // Make changes here to the powershell.exe profile.
    "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
    "name": "Windows PowerShell",
    "commandline": "powershell.exe",
    "fontFace": "Cascadia Code PL",
    //"cursorShape": "filledBox",
    "historySize" : 9001,
    "fontSize" : 11,
    "colorScheme" : "One Half Dark",
    //"startingDirectory": ".",
    "hidden": false
},
```

Save the file.  
Done, start powershell to take a look.

#### Windows Terminal built-in colorScheme:

Other built-in powershell themes to try.

Replace the color scheme in line `"colorScheme" : "One Half Dark",` with one of the following.

```
  One Half Dark
  One Half Light
  Campbell
  Campbell Powershell
  Vintage
  Tango Dark
  Tango Light
  Solarized Dark
  Solarized Light
```

## Customize POSH

The standard initialization sets Oh My Posh' default theme. This configuration is embedded and thus kept up-to-date with Oh My Posh.

To set a new config/theme you need to change the `--config` option of the `oh-my-posh init <shell>` line in your `profile` or `.<shell>rc` script (see [prompt](https://ohmyposh.dev/docs/installation/prompt)) and point it to the location of a predefined [theme](https://ohmyposh.dev/docs/themes) or custom configuration.

There are two possible values the `--config` flag can handle:

- a path to a local configuration file

```powershell
oh-my-posh init pwsh --config 'C:/Users/Posh/jandedobbeleer.omp.json' | Invoke-Expression
```

The Windows and homebrew installers also bundle the **predefined configurations** ([themes](https://ohmyposh.dev/docs/themes)). You can use the following way to reference them directly. This will keep them up-to-date and compatible with future updates

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression
```

Once altered, reload your profile for the changes to take effect.

```powershell
. $PROFILE
```

### View Themes and changing it

List Themes Name  

```powershell
Get-PoshThemes -list
```

List Themes with Preview
```
Get-PoshThemes
```

### Enable the Prompt

Themes with `minimal` in their names do not require a Nerd Font.

**Set the desired theme:**  

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerlevel10k_rainbow.omp.json" | Invoke-Expression
```

**You can view the themes name with following command:**

```powershell
ls $env:POSH_THEMES_PATH
Get-PoshThemes -list
```

Oh My Posh Themes to Try:

Agnoster
Paradox
tokyo
powerlevel10k_rainbow
Robbyrussel
Pararussel  

### Official Links

https://github.com/microsoft/terminal/releases  
https://github.com/JanDeDobbeleer/oh-my-posh  
https://github.com/dahlbyk/posh-git  
https://github.com/microsoft/cascadia-code/releases  
https://git-scm.com/downloads  
https://www.powershellgallery.com/packages/oh-my-posh/  
https://www.powershellgallery.com/packages/posh-git/  
https://www.powershellgallery.com/packages/PSReadLine/  