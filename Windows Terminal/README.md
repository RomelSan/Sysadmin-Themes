# Windows Terminal Profiles
You can open the settings file directly using keyboard shortcuts.  
Open settings file: `ctrl+shift+,`  
Also you can take a look at the auto generated file: `ctrl+alt+,`

## Creating profile
1. Click Settings. 

![Demo 01](./screenshot.png?raw=true)  

Click "Open JSON file"

The settings are in Json format.

1. Creating a named `cmd` profile with a custom font and theme 
```json
{
    "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
    "name": "cmd",
    "commandline": "cmd.exe",
    "tabTitle": "Command Prompt",
    "colorScheme" : "One Half Dark",
    "fontFace": "Cascadia Code PL",
    "fontSize" : 11,
    "historySize" : 9001,
    "hidden": false
},
```

You can generate an unique GUID using powershell and type: `New-Guid`

In your code editor should look like:  
![Demo 02](./screenshot-code.png?raw=true)

Note: The last profile the one at the bottom, should not have a "`,`" comma at the end.

3. For examples check files: `Windows Terminal Settings Example.json` and check inside Themes folder.

4. If you want to install PowerLine for Powershell then check the file `README.md` inside the folder `PowerLine for Powershell`.

## Extras
You can check advanced SSH settings inside the `SSH` folder.

## Links
Download External Themes: https://windowsterminalthemes.dev/  
MultiPort Themes: https://github.com/mbadolato/iTerm2-Color-Schemes
