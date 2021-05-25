# Windows Terminal Shortcuts
## Open tab in split or in a new window
To open another profile in a new pane, hold down the Alt key when choosing it from the drop-down menu.

You can now hold Shift and click on a profile in the dropdown menu to open that profile in a new window. 

## Navigate and Resize
Hold down Alt and use the cursor keys to switch between active panes from the keyboard.  
The size of a pane can be adjusted by holding Alt + Shift and using the cursor keys to resize accordingly.

## Force Pane Creation
Vertical pane, press Alt + Shift + +  
Horizontal pane, press Alt + Shift + -

## Duplicate and split the pane
Press Alt + Shift + D to duplicate and split the pane.  
The active pane is split in two along the longest axis each time it is used

## Close
To close the active pane or tab, press Alt + Shift + W or enter the terminal’s standard exit command (usually exit).

## Text Size
The text size of the active terminal can be resized with Ctrl + + and Ctrl + -.  
Alternatively, hold down Ctrl and scroll the mouse wheel.

## Scrolling
Use the scroll bar to navigate through the terminal output.  
Alternatively, hold down Ctrl and press cursor up, cursor down, Page Up or Page Down to navigate using the keyboard.

## Search
Press Ctrl + Shift + F to open the search box:

## Copy and Paste
By default, copy and paste are bound to Ctrl + Shift + C and Ctrl + Shift + V respectively,  
although Ctrl + C and Ctrl + V will also work.  
Note: be wary that Ctrl + C can terminate a Linux application, so using Shift is advisable.

## Settings
Settings are accessed from the drop-down menu or Ctrl + , (comma).  
The configuration is defined in a single settings.json file

---

## Open Windows Terminal From CMD or Address Bar
### Open current directory
`wt -d .`

### Open current directory using cmd profile.
`wt -p "Command Prompt" -d .`

### Open Windows Terminal with the Ubuntu and Windows Powershell tabs:  
`wt -p "Ubuntu" ; new-tab -p "Windows PowerShell"`

### Open Windows Terminal with the Ubuntu, Windows Powershell, and Command Prompt profiles in separate panes:  
`wt -p "Ubuntu" ; split-pane -V -p "Windows PowerShell" ; split-pane -H -p "Command Prompt"`