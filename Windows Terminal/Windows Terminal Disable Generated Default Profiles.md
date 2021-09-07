# Windows Terminal
## Disable Default Generated Profiles
```json
{
    "$schema": "https://aka.ms/terminal-profiles-schema",

    "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
    
    "disabledProfileSources": [
        "Windows.Terminal.Azure",
        "Windows.Terminal.Wsl",
        "Windows.Terminal.PowershellCore"
    ],
```
