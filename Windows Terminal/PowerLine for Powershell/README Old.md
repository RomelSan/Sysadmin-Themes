# Set up Powerline in PowerShell
Preview:  
![Demo 01](./screenshot.png?raw=true)

## PowerShell prerequisites
Install Windows Terminal: https://github.com/microsoft/terminal/releases  
Install Git for Windows if installing Posh-Git: https://git-scm.com/downloads  
Install `Cascadia Code PL` Font: https://github.com/microsoft/cascadia-code/releases  

## Using PowerShell, install the modules:

You can install all the modules or just the Oh-My-Posh.

 * Oh-My-Posh provides theme capabilities for your PowerShell prompt.
 * Posh-Git adds Git status information to your prompt as well as tab-completion for Git 
 * Terminal-Icons add icons to your Dir command
```Powershell
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module terminal-icons -Scope CurrentUser
```
Note: To update a module use the command: `Update-Module`

## If you are using PowerShell Core, install PSReadline:
* PSReadline lets you customize the command line editing environment in PowerShell.
```Powershell
Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck
```

## Customize your PowerShell prompt
* Open your PowerShell profile with a code editor:  
`code $PROFILE`  
`notepad $PROFILE`  
`notepad++ $PROFILE`  
or the text editor of your choice.  
This is not your Windows Terminal profile.   
Your PowerShell profile is a script that runs every time PowerShell starts.

### In your PowerShell profile, add the following to the end of the file:
```Powershell
Import-Module posh-git
Import-Module terminal-icons
Import-Module oh-my-posh
Set-PoshPrompt -Theme agnoster
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

#### **Powershell built-in colorScheme:**

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

### Other Stuff
* List current configuration  
`Get-PoshContext`

* Oh My Posh Themes to Try:  
Agnoster  
Paradox  
Powerlevel10k-Lean  
Robbyrussel  
Pararussel  

* List Themes Name  

  `Get-PoshThemes -list`

* List Themes with Preview  
`Get-PoshThemes`

### Enable the Prompt
* Set the desired theme:  
`Set-PoshPrompt -Theme paradox`



## Updating

To update type:

```
Update-Module -Name posh-git -Scope CurrentUser
Update-Module -Name oh-my-posh -Scope CurrentUser
Update-Module -Name PSReadLine -Scope CurrentUser
```



### Official Links
https://github.com/microsoft/terminal/releases  
https://github.com/JanDeDobbeleer/oh-my-posh  
https://github.com/dahlbyk/posh-git  
https://github.com/microsoft/cascadia-code/releases  
https://git-scm.com/downloads  
https://www.powershellgallery.com/packages/oh-my-posh/  
https://www.powershellgallery.com/packages/posh-git/  
https://www.powershellgallery.com/packages/PSReadLine/  
