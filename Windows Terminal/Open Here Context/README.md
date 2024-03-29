## Add Open Windows Terminal as Administrator to Context Menu

To add or remove *Open Windows Terminal as administrator* to the context menu, follow these steps:

1. Open Notepad on your computer.
2. Paste the following text.
3. Click on *File > Save As*.
4. Choose a location, enter a file name with *.reg* extension.
5. Select *All Files* from the *Save as type* drop-down list.
6. Click the *Save* button.
7. Double-click on the .reg file and click the Yes button twice.

To learn more about these steps, keep reading.

At first, you have to open a .reg file as it is quite a task if you want  to navigate each path and create the respective Key, REG_DWORD, and  String Value.

To do that, open Notepad on your computer and paste the following text:

```
Windows Registry Editor Version 5.00

; Shell
[HKEY_CLASSES_ROOT\Directory\shell\OpenWTHereAsAdmin] 
"HasLUAShield"="" 
"MUIVerb"="Open in Terminal as Administrator" 
"Extended"=- 
"SubCommands"=""

; 1 Item Shell - Default Profile
[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\001flyout] 
"MUIVerb"="Default Profile" 
"HasLUAShield"=""

[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\001flyout\command] 
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-d','\"\"\"%V\"\"\"')\""

; 2 Item Shell - CMD
[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\002flyout] 
"MUIVerb"="Command Prompt" 
"Icon"="imageres.dll,-5324"

[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\002flyout\command] 
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-p','\"\"\"Command Prompt\"\"\"','-d','\"\"\"%V\"\"\"')\""

; 3 Item Shell - Windows PowerShell
[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\003flyout] 
"MUIVerb"="Windows PowerShell" 
"HasLUAShield"="" "Icon"="powershell.exe"

[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\003flyout\command] 
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-p','\"\"\"Windows PowerShell\"\"\"','-d','\"\"\"%1\"\"\"')\""

; 4 Item Shell - Windows PowerShell
[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\004flyout]
"MUIVerb"="PowerShell"
"HasLUAShield"=""
"Icon"="pwsh.exe"

[HKEY_CLASSES_ROOT\Directory\Shell\OpenWTHereAsAdmin\shell\004flyout\command]
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-p','\"\"\"PowerShell\"\"\"','-d','\"\"\"%V\"\"\"')\""



; Background
[HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWTHereAsAdmin] 
"HasLUAShield"="" 
"MUIVerb"="Open in Terminal as Administrator" 
"Extended"=- 
"SubCommands"=""

; 1 Item Background - Default Profile
[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\001flyout] 
"MUIVerb"="Default Profile" 
"HasLUAShield"=""

[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\001flyout\command] 
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-d','\"\"\"%V\"\"\"')\""

; 2 Item Background - CMD
[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\002flyout] 
"MUIVerb"="Command Prompt" 
"Icon"="imageres.dll,-5324"

[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\002flyout\command] 
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-p','\"\"\"Command Prompt\"\"\"','-d','\"\"\"%V\"\"\"')\""

; 3 Item Background - Windows PowerShell
[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\003flyout] 
"MUIVerb"="Windows PowerShell" 
"HasLUAShield"="" 
"Icon"="powershell.exe"

[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\003flyout\command] 
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-p','\"\"\"Windows PowerShell\"\"\"','-d','\"\"\"%V\"\"\"')\""

; 4 Item Background - PowerShell 7
[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\004flyout]
"MUIVerb"="PowerShell"
"HasLUAShield"=""
"Icon"="pwsh.exe"

[HKEY_CLASSES_ROOT\Directory\Background\Shell\OpenWTHereAsAdmin\shell\004flyout\command]
@="powershell.exe -WindowStyle Hidden \"Start-Process -Verb RunAs cmd.exe -ArgumentList @('/c','start wt.exe','-p','\"\"\"PowerShell\"\"\"','-d','\"\"\"%V\"\"\"')\""

```

You can also customize the text where it says *Open in Windows Terminal as administrator* or *Open in Windows Terminal Default Profile as administrator* or *Open in Windows Terminal Command Prompt as administrator* or *Open in Windows Terminal PowerShell as administrator*.

Click on the **File > Save As** option > choose a location where you want to save the file > give it a name with **.reg** extension (for example, *adminterminal.reg*), choose **All Files** from the *Save as type* drop-down list, and click the **Save** button.

Double-click on the .reg file and select the **Yes** option twice to confirm the change. Now you can find the **Open in Windows Terminal as administrator** option next to the *Open in Windows Terminal* option in the context menu.

## Uninstall

In case you want to remove the elevated Windows Terminal option, open the Registry Editor and navigate to these two paths:

```
Windows Registry Editor Version 5.00

[-HKEY_CLASSES_ROOT\Directory\Background\shell\OpenWTHereAsAdmin]
[-HKEY_CLASSES_ROOT\Directory\shell\OpenWTHereAsAdmin]
```

Right-click on **OpenWTHereAsAdmin** > select the **Delete** option and confirm the change.

That’s all!

## Credits

https://www.thewindowsclub.com/add-elevated-windows-terminal-in-context-menu

