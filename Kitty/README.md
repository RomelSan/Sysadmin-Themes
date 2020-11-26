# Kitty Portable
Preview Nord Theme:  
![Demo 01](./screenshot.png?raw=true)

## Recommended settings
1. Terminal --> Features --> Disable Application Keypad mode
2. Terminal --> Keyboard --> The Function keys and keypad --> Linux
3. Connection --> Data --> set terminal-type string to `linux`
4. Window -> Appearance set check for "Allow selection of variable pitch fonts"
5. Window -> Colours set check for "Selected text is a different colour"
6. Use font `Cascadia Code PL` included with "Windows Terminal" app or download from github  
   File to install: `CascadiaCodePL.ttf`  
   https://github.com/microsoft/cascadia-code
7. If you are using oh my zsh then you can use the fonts from `nerdfonts.com`  
   My favorites are: `SourceCodePro.zip` and `CascadiaCode.zip`  
   The fonts to install are:  
   `Sauce Code Pro Nerd Font Complete Windows Compatible.ttf`  
   `Caskaydia Cove Nerd Font Complete Windows Compatible.ttf`  
   https://github.com/ryanoasis/nerd-fonts/releases

## Default Sessions
TIP: to make your default sessions, Load the `Default Settings` 
then change its settings using above configurations and then save the session again as 
`Default Settings` (just make sure to not put any host specific things like 
hostname, port, username, password – leave those as default)

## Editing session file
Edit the session file directly.  
Kitty portable store sessions inside `Sessions` folder.  
If you are not using the portable version then build a `reg` file. Check themes txt files.   

### Core theme colors
```
Colour33\187,187,187\
Colour32\0,0,0\
Colour31\187,187,187\
Colour30\0,187,187\
Colour29\187,0,187\
Colour28\0,0,187\
Colour27\187,187,0\
Colour26\0,187,0\
Colour25\187,0,0\
Colour24\0,0,0\
Colour23\0,0,0\
Colour22\187,187,187\
Colour21\255,255,255\
Colour20\255,255,255\
Colour19\255,215,0\
Colour18\0,255,255\
Colour17\255,85,255\
Colour16\255,0,255\
Colour15\135,206,235\
Colour14\50,164,218\
Colour13\255,255,85\
Colour12\240,230,140\
Colour11\85,255,85\
Colour10\152,251,152\
Colour9\255,85,85\
Colour8\187,0,0\
Colour7\85,85,85\
Colour6\77,77,77\
Colour5\0,255,0\
Colour4\0,0,0\
Colour3\134,134,134\
Colour2\51,51,51\
Colour1\255,255,255\
Colour0\255,255,255\
```

## Color maps reference
```
# PuTTY CFG	# ANSI Relation		# PuTTY GUI

Colour0		Foreground Color	# Default Foreground
Colour1		Bold Color		    # Default Foreground
Colour2		Background Color	# Default Background
Colour3		Background Color	# Default Foreground
Colour4		Cursor Color		# Cursor Text
Colour5		Cursor Text Color	# Cursor Color
Colour6		ANSI 0 Color		# ANSI Black
Colour7		ANSI 8 Color		# ANSI Black Bold
Colour8		ANSI 1 Color		# ANSI Red
Colour9		ANSI 9 Color		# ANSI Red Bold
Colour10	ANSI 2 Color		# ANSI Green
Colour11	ANSI 10 Color		# ANSI Green Bold
Colour12	ANSI 3 Color		# ANSI Yellow
Colour13	ANSI 11 Color		# ANSI Yellow Bold
Colour14	ANSI 4 Color		# ANSI Blue
Colour15	ANSI 12 Color		# ANSI Blue Bold
Colour16	ANSI 5 Color		# ANSI Magenta
Colour17	ANSI 13 Color		# ANSI Magenta Bold
Colour18	ANSI 6 Color		# ANSI Cyan
Colour19	ANSI 14 Color		# ANSI Cyan Bold
Colour20	ANSI 7 Color		# ANSI White
Colour21	ANSI 15 Color		# ANSI White Bold
```

## Test colors in SSH
Test colors by looking at results in some software:
```
whiptail --yesno Hello 10 50 --title TitleBox --backtitle BackTitle
mc
htop
top
```

---

## Test powerline or nerd font icons  
`echo -e "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"`

## Troubleshoot Font
If you are using putty or kitty and you don't see the font then you must install/use the "Mono" fonts.
