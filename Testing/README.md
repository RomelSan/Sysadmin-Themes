# Testing Themes and Fonts
## Printing color schema
Use the file `screenshotTable.sh` in linux.
```
chmod +x screenshotTable.sh
./screenshotTable.sh
```
Use the file `win10colors.cmd` in Windows Terminal CMD profile.

## Simple test for powerline or nerd font icons  
In linux
`echo -e "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"`

## Test colors in SSH
Test colors by looking at results in some software:
```
whiptail --yesno Hello 10 50 --title TitleBox --backtitle BackTitle
mc
htop
top
```

## Test Extended Fonts
Test fonts from NerdFonts or Powerline.  
Use the file `test-fonts.sh` in linux.
```
chmod +x test-fonts.sh
./test-fonts.sh
```

## Check Linux Terminal
Test red color (must be red):  
`print -P '%F{#ff0000}red%f'`  
Check Colors (must return 256):  
`print $terminfo[colors]`  
Check Locale (must have UTF-8):  
`locale -a`
