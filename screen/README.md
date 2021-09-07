# How To Use Linux Screen
Preview:  
![Demo 01](./screenshot.png?raw=true)

Have you ever faced the situation where you perform a long-running task on a remote machine, and suddenly your connection drops, the SSH session is terminated, and your work is lost.  
There is a utility called **screen** that allows us to resume the sessions.  
Processes running in Screen will continue to run when their window is not visible even if you get disconnected.

## Install screen
`sudo apt-get install screen`

## Check version
`screen --version`

## Running screen
To start a screen session, simply type screen in your console:  
`screen`

## Get list of commands
`Ctrl+a ?`

## Starting Named Session
Named sessions are useful when you run multiple screen sessions.  
`screen -S session_name`

## Detach from Linux Screen Session
The program running in the screen session will continue to run after you detach from the session.  
`Ctrl+a d`

## Reattach to a Linux Screen
`screen -r`

## Force Reattach
`screen -d session_name`  
`screen -r session_name`

## Find Session ID or opened sessions
`screen -ls`

## Working with Linux Screen Windows
You can have multiple windows inside a Screen session.  
### Creating new window
To create a new window with shell type `Ctrl+a c`, the first available number from the range 0...9 will be assigned to it.
### Switching Window
`Ctrl+a 0` Switch to window 0 (by number)  
`Ctrl+a "` List all window  
`Ctrl+a A` Rename the current window
### Splitting
`Ctrl+a S` Split current region horizontally into two regions
`Ctrl+a |` Split current region vertically into two regions
`Ctrl+a tab` Switch the input focus to the next region
`Ctrl+a Ctrl+a` Toggle between the current and previous region
`Ctrl+a Q` Close all regions but the current one
`Ctrl+a X` Close the current region

## Customize Linux Screen
When screen is started, it reads its configuration parameters from `/etc/screenrc` and `~/.screenrc` if the file is present.  
We can modify the default Screen settings according to our preferences using the `.screenrc` file.  

Here is a sample `~/.screenrc` configuration with customized status line and few additional options:
```conf
# Turn off the welcome message
startup_message off

# Disable visual bell
vbell off

# Set scrollback buffer to 10000
defscrollback 10000

# Customize the status line
hardstatus alwayslastline
hardstatus string '%{= kG}[ %{G}%H %{g}][%= %{= kw}%?%-Lw%?%{r}(%{W}%n*%f%t%?(%u)%?%{r})%{w}%?%+Lw%?%?%= %{g}][%{B} %m-%d %{W}%c %{g}]'

# Bind F11 and F12 (NOT F1 and F2) to previous and next screen window
bindkey -k F1 prev
bindkey -k F2 next

# If problem with Tab Autocompletion uncomment line below:
# defshell -bash
```

## Basic Linux Screen Usage
Below are the most basic steps for getting started with screen:
1. On the command prompt, type `screen`.
2. Run the desired program.
3. Use the key sequence `Ctrl-a` + `d` to detach from the screen session.
4. Reattach to the screen session by typing `screen -r`.

## Credits
https://linuxize.com/post/how-to-use-linux-screen/  
