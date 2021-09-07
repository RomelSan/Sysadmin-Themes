# MultiPane

## Keyboard Shortcuts

### New Pane
You can open a new pane either to the right using `alt + shift + =`, or to the bottom using `alt + shift + -`.  
Note, the profile that opens in the new pane will always be the whatever you have set as your default profile.

### Resize Pane
To resize the panes, use `alt + shift + <arrow key>` to resize in the direction of the arrow key used.

### Select Pane
You can select each pane either by clicking it, or you can use the `alt + <arrow key>` shortcut to move the focus between the panes, in the direction of the arrow key.

### Close Pane
Finally, to close a pane, you can use the `ctrl + shift + w` shortcut.

---

## Customize the start-up layout
Installing Windows Terminal adds `wt` to the system path, so you can invoke it without having to specify the fully qualified path. On it's own, wt will start up a new instance of Windows Terminal, but it also has sub-commands for split-pane and new-tab, which allow you to set up the layout how you like.
```
-p	Profile
-h	Split Horizontally
-v	Split Vertically
-d	Starting Directory
```
ex:  
`wt ; new-tab -p "PowerShell Core" ; split-pane -p "Ubuntu" -V; split-pane -p "PowerShell Core" -H -d "C:/_Projects"`

### Focus
If you want to open with focus on a different tab, you can add the `focus-tab` sub-command with the `-t` parameter to specify the tab number (tab numbers start at 0).

---

## Open the Terminal at the current directory
If you are used to opening up cmd or PowerShell in the current directory by typing in cmd or pwsh into the address bar in File Explorer, then you may expect the same to work with wt.

However, this is not the case - it will open up to your default user directory.  
But you can get around this using the `-d` flag for wt to specify the current directory, e.g.  
`wt -d .`

## Article
https://endjin.com/blog/2020/05/5-tips-for-an-awesome-windows-terminal-experience  
https://docs.microsoft.com/en-us/windows/terminal/command-line-arguments?tabs=windows
