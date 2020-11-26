# Tmux
Preview - Tmux with powerline Nord Theme:  
![Demo 01](./screenshot.png?raw=true)

Both the tmux and GNU screen commands are terminal multiplexers. They allow you to have multiple windows within a single terminal window, and to jump back and forth between them. A window can be divided into panes, each of which gives you an independent command line.  

You can also detach a session and it becomes a headless entity running in the background—you can even close the terminal window that launched it. When you’re ready, you can open a new terminal window and reattach the still-running session. You can also do this over an SSH connection.  

You can detach a session on one computer, go home, and log in to the remote computer. When reconnected, you can reattach the background session and use it interactively again.  

## Install Tmux
`sudo apt-get install tmux`

## Starting a Named tmux Session
`tmux new -s terminalName`

## Attach a detached session
`tmux attach-session -t terminalName`

## Ctrl+B Cheat Sheet
Press Ctrl+B and other key to:
### Session Commands
* S: List sessions.
* $: Rename current session.
* D: Detach current session.
* Ctrl+B, and then ?: Display Help page in tmux.

### Window Commands
* C: Create a new window.
* ,: Rename the current window.
* W: List the windows.
* N: Move to the next window.
* P: Move to the previous window.
* 0 to 9: Move to the window number specified.

### Pane Commands
* %: Create a horizontal split.
* ": Create a vertical split.
* H or Left Arrow: Move to the pane on the left.
* I or Right Arrow: Move to the pane on the right.
* J or Down Arrow: Move to the pane below.
* K or Up Arrow: Move to the pane above.
* Q: Briefly show pane numbers.
* O: Move through panes in order. Each press takes you to the next, until you loop through all of them.
* }: Swap the position of the current pane with the next.
* {: Swap the position of the current pane with the previous.
* X: Close the current pane.

### Pane Stuff
* t: prefix + t Show the current time in a tmux pane, to dismiss press Esc key.

---

## Customizing tmux
Customizing tmux is as easy as editing a text file. tmux uses a file called `tmux.conf` to store its configuration. If you store that file as `~/.tmux.conf` tmux will pick this configuration file for your current user.

```conf
# Nord theme for Tmux, no patched font edition
#+ Status +
#+--- Bars ---+
set -g status-left "\
#[fg=colour7, bg=colour241]#{?client_prefix,#[bg=colour167],} * \
#[fg=black,bg=blue,bold] #S "

set -g status-right "\
#[fg=white,bg=brightblack] %Y-%m-%d \
#[fg=white,bg=brightblack,nobold,noitalics,nounderscore]|#[fg=white,bg=brightblack] %R \
#[fg=cyan,bg=brightblack,nobold,noitalics,nounderscore] #[fg=black,bg=cyan,bold] #H "

#+--- Windows ---+
set -g window-status-format " #[fg=white,bg=brightblack]#I #[fg=white,bg=brightblack]#W #F"

set -g window-status-current-format " \
#[fg=black,bg=cyan]#I#[fg=black,bg=cyan,nobold,noitalics,nounderscore] #[fg=black,bg=cyan]#W #F"

set -g window-status-separator ""

#+ Options +
set -g status-interval 5
set -g status on

#+--- Layout ---+
set -g status-justify left

#+--- Colors ---+
set -g status-bg black
set -g status-fg white

#+ Panes +
set -g display-panes-colour black
set -g display-panes-active-colour brightblack

#+ Clock Mode +
setw -g clock-mode-colour cyan

#+ Window list selection color +
set -wg mode-style bg=blue,fg=white
```

## Set up tmux so that it starts up with specified windows opened
Check the file "Setup Tmux to open with panes.md".

---

## Test powerline font icons
`echo -e "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"`

---

## Article Credits
https://www.howtogeek.com/671422/how-to-use-tmux-on-linux-and-why-its-better-than-screen/amp/

## Resources
https://github.com/jimeh/tmux-themepack  
https://github.com/rothgar/awesome-tmux

---

## For Power Users
## Plugins
CPU Plugin: https://github.com/tmux-plugins/tmux-cpu  
Prefix highlight: https://github.com/tmux-plugins/tmux-prefix-highlight  

## Powerline for Tmux
.Tmux: https://github.com/gpakosz/.tmux  

## Themes for Powerline
Tmux Powerline Theme: https://github.com/wfxr/tmux-power
