# Themes for Sysadmins
Customize your shells & terminals.

## Apps
screen, tmux and zsh are for Linux.  
Kitty, Windows Terminal and Fonts are for Windows.  
Inside "Windows Terminal" folder there is the PowerLine for Powershell. 

## Instructions

### **Fonts**
This is a must to make sure the themes works as intended.  
If you are going to use Powershell themes then install a PowerLine Font.  
If you are going to use Oh My ZSH (Linux) and/or Oh my Posh (Powershell) then use Nerd Fonts because they have PowerLine Symbols + some required extras.

1. Install a PowerLine font, ex: `CascadiaCodePL.ttf` located in folder `Fonts --> PowerLine` folder.
2. If you want to use a [Nerd Font](https://www.nerdfonts.com/):  
   Located in folder `Fonts --> NerdFonts` folder.  
   My favorites are: `CascadiaCode` and `SourceCodePro`     
   The fonts to install are:  
   `Caskaydia Cove Nerd Font Complete Windows Compatible.ttf`  
   `Sauce Code Pro Nerd Font Complete Windows Compatible.ttf`  
   If you are not using Windows Terminal then i suggest to install the Mono Font version.

### Customizing Kitty
Using Kitty portable on Windows.
1. Do the Kitty portable recommended settings. Open File `README.md` inside Kitty folder.
2. Use any Kitty theme you want. My favorites are: Nord Theme and Core Theme.

### Customizing Linux Shell
Tested on Ubuntu Server 22.04 LTS
1. Do **screen** settings. `Inside screen folder`
2. Do **tmux** settings. `Inside tmux folder`.  
If you are going powerline then at the end apply the Nord Theme `tmux-nord-v2-powerline.conf` save as `.tmux.conf` inside your home folder.
3. Optional.- Do ZSH. `inside ZSH folder` file `README.md`

### Customizing Windows Terminal
1. To build a Windows Terminal profile, open Settings in the app and create one. Check the example file `Windows Terminal Settings Example.json`.
* Check "Windows Terminal/Themes" folder if you are going to use a theme like Umbrella theme or Nord theme.
2. Add "open here context", inside folder `Windows Terminal\Open Here Context` file `README.md`.
3. Check file `Windows Terminal Shortcuts.md`

### PowerShell - Oh my Posh
1. Install Oh-my-posh.  
Check file `README.md` inside `PowerLine for Powershell` folder.

## Testing Themes Fonts and Colors
Check the the file `README.md` in `Testing` folder.

## Extras (in extras folder)
[LSD](https://github.com/Peltoche/lsd) - Beautifies the terminal's ls command, with color and font-awesome icons.  
MOTD - Customize Login Message.

## Multiports
Theme Ports for Terminal, Konsole, XRDB, Terminator, etc. Visit:  
[mbadolato iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)

## My Repos
https://github.com/RomelSan  
https://gist.github.com/RomelSan

---

## Preview
Kitty Portable with Nord Theme, Oh My ZSH with mikeh theme
![Linux](./tmux/screenshot2.png?raw=true)   

Windows Terminal
![Windows](./Windows%20Terminal/Themes/Umbrella/screens/Screen01.png?raw=true)  
