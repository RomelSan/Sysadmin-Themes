# **ZSH and Oh My ZSH**
Preview - Kitty Portable with Nord theme, ZSH + Oh My ZSH with fino theme, tmux with Nord Theme, CascadiaCodePL font.  
![Demo 01](./screenshot.png?raw=true)  

### **Install ZSH**
```
sudo apt install zsh
```
### **Add other complements**
```
sudo apt install zsh-autosuggestions zsh-syntax-highlighting
```
### **Check Version**
```
zsh --version
```
should be 5.0.8 or more recent

### **Change Shell**
```
chsh -s $(which zsh)
```
or
```
sudo usermod -s $(which zsh) <username>
```
Then logout and loging, when asked select option **2** to generate default settings.

# **Installing [Oh My ZSH](https://github.com/ohmyzsh/ohmyzsh)**
### **Install via Curl**
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### **Or Install via Wget**
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### **Selecting a Theme**
```
nano ~/.zshrc
```
Modify `ZSH_THEME="robbyrussell"`
to use a different theme.
For example:
```
ZSH_THEME="fino"
```
My favorites themes are: fino, funky, josh, mikeh, darkblood, tjkirch, gnzh

### Testing Theme
If you are changing the theme then you can reload the shell with:  
`source ~/.zshrc`

# **Optional (Advanced Looks)**
## **Using Patched Fonts**
1. Use font `Cascadia Code PL` included with "Windows Terminal" app or download from github  
   File to install: `CascadiaCodePL.ttf`  
   https://github.com/microsoft/cascadia-code
2. Also you can use patched fonts from `nerdfonts.com`  
   My favorites are: `SourceCodePro.zip` and `CascadiaCode.zip`  
   The fonts to install are:  
   `Sauce Code Pro Nerd Font Complete Windows Compatible.ttf`  
   `Caskaydia Cove Nerd Font Complete Windows Compatible.ttf`  
   https://github.com/ryanoasis/nerd-fonts/releases


## **Putty and Kitty**
### **Setting Font**
In Windows --> Appearance --> Font Settings, click change and select the patched font.  
Also check "Allow selection of variable-pitch fonts"  
Font Quality: ClearType

### **Fixing Keypad**
In Terminal --> Features --> Check "Disable application keypad mode"

### **Get Colors Working**
In Connection --> Data --> Terminal Details --> Terminal-type string  
Type: "linux"

## **Setting shell colors (Putty and Kitty)**
### **Nord Theme**
For Saved Session in Sessions folder. (For Kitty)
```
Colour0\216,222,233\
Colour1\216,222,233\
Colour2\46,52,64\
Colour3\46,52,64\
Colour4\46,52,64\
Colour5\216,222,233\
Colour6\59,66,82\
Colour7\76,86,106\
Colour8\191,97,106\
Colour9\191,97,106\
Colour10\163,190,140\
Colour11\163,190,140\
Colour12\235,203,139\
Colour13\235,203,139\
Colour14\129,161,193\
Colour15\129,161,193\
Colour16\180,142,173\
Colour17\180,142,173\
Colour18\136,192,208\
Colour19\143,188,187\
Colour20\229,233,240\
Colour21\236,239,244\
```

**Regedit (For Putty)**
```
Windows Registry Editor Version 5.00 

[HKEY_CURRENT_USER\Software\SimonTatham\PuTTY\Sessions\Nord]
"Colour0"="216,222,233"
"Colour1"="216,222,233"
"Colour2"="46,52,64"
"Colour3"="46,52,64"
"Colour4"="46,52,64"
"Colour5"="216,222,233"
"Colour6"="59,66,82"
"Colour7"="76,86,106"
"Colour8"="191,97,106"
"Colour9"="191,97,106"
"Colour10"="163,190,140"
"Colour11"="163,190,140"
"Colour12"="235,203,139"
"Colour13"="235,203,139"
"Colour14"="129,161,193"
"Colour15"="129,161,193"
"Colour16"="180,142,173"
"Colour17"="180,142,173"
"Colour18"="136,192,208"
"Colour19"="143,188,187"
"Colour20"="229,233,240"
"Colour21"="236,239,244"
```
## **Select an advanced theme** (Powerline)
```
nano ~/.zshrc
```
Set theme: `ZSH_THEME="agnoster"`

## **Other options**
### **Disable Update Prompt**
In zshrc config, uncomment
```
zstyle ':omz:update' mode disabled
```

### **Manual Updates**
In shell
```
omz update
```

### **Uninstall**
In shell
```
uninstall_oh_my_zsh
```
