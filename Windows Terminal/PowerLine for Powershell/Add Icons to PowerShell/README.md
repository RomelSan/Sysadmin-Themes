# Show Icons in Powershell

Install Icons module

```
Install-Module -Name Terminal-Icons -Repository PSGallery
```

Test it by loading

```
Import-Module -Name Terminal-Icons
```

## Add this to the Powershell Profile

Open PowerShell profile configuration file: `Microsoft.PowerShell_profile.ps1`

```
code $PROFILE
```

If you don't have visual studio code then instead of code use `notepad++ $PROFILE`

Then add to the profile this code to load the icons module on each powershell session

```
Import-Module -Name Terminal-Icons
```



## Credits

https://www.hanselman.com/blog/my-ultimate-powershell-prompt-with-oh-my-posh-and-the-windows-terminal

https://github.com/devblackops/Terminal-Icons

https://www.powershellgallery.com/packages/Terminal-Icons/

