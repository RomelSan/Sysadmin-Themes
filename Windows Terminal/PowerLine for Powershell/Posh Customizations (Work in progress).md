## POSHv3 Customization

## Config Example Profile

```
using namespace System.Management.Automation
using namespace System.Management.Automation.Language
 
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}

#Import-Module PSColors
#Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module oh-my-posh

oh-my-posh --init --shell pwsh --config "D:\Dropbox\poshv3.json" | Invoke-Expression
```

## poshv3.json

```
{
    "final_space": true,
    "console_title": true,
    "console_title_style": "folder",
    "blocks": [
        {
            "type": "prompt",
            "alignment": "left",
            "horizontal_offset": 0,
            "vertical_offset": 0,
            "segments": [
                {
                    "type": "path",
                    "style": "diamond",
                    "powerline_symbol": "",
                    "invert_powerline": false,
                    "foreground": "#ffffff",
                    "background": "#ff479c",
                    "leading_diamond": "",
                    "trailing_diamond": "",
                    "properties": {
                        "prefix": "  ",
                        "style": "folder"
                    }
                },
                {
                    "type": "git",
                    "style": "powerline",
                    "powerline_symbol": "",
                    "invert_powerline": false,
                    "foreground": "#193549",
                    "background": "#fffb38",
                    "leading_diamond": "",
                    "trailing_diamond": "",
                    "properties": {
                        "display_status": true,
                        "display_stash_count": true,
                        "display_upstream_icon": true
                    }
                },
                {
                    "type": "dotnet",
                    "style": "powerline",
                    "powerline_symbol": "",
                    "invert_powerline": false,
                    "foreground": "#ffffff",
                    "background": "#6CA35E",
                    "leading_diamond": "",
                    "trailing_diamond": "",
                    "properties": {
                        "display_version": true,
                        "prefix": "  "
                    }
                },
                {
                    "type": "root",
                    "style": "powerline",
                    "powerline_symbol": "",
                    "invert_powerline": false,
                    "foreground": "#ffffff",
                    "background": "#ffff66",
                    "leading_diamond": "",
                    "trailing_diamond": "",
                    "properties": null
                },
                {
                    "type": "exit",
                    "style": "powerline",
                    "powerline_symbol": "",
                    "invert_powerline": false,
                    "foreground": "#ffffff",
                    "background": "#2e9599",
                    "leading_diamond": "",
                    "trailing_diamond": "",
                    "properties": {
                        "always_enabled": true,
                        "color_background": true,
                        "display_exit_code": false,
                        "error_color": "#f1184c",
                        "prefix": " "
                    }
                }
            ]
        }
    ]
}
```

