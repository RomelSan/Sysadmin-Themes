# Set up tmux so that it starts up with specified windows opened
You can write a small shell script that launches tmux with the required programs.  
Preview: Kitty Portable with Nord Theme, ZSH + Oh My ZSH with "mikeh" theme, tmux with Nord-Theme.  

![Demo 01](./screenshot2.png?raw=true)  
The screenshot script is the one from the example "Horizontal with clock"

## **Creating Script**
`nano tmux-script.sh`  
When done don't forget to make it executable.  
`chmod +x tmux-script.sh`  
You must call this script to run your tmux with your customized panes.  
`./tmux-script.sh`

## **Script Contents**
Read this and try some code to make sure you understand.
### **Creating 3 panes**
To split it horizontal or vertical use split-window -h or -v subsequently
```bash
#!/bin/sh
tmux new-session \; split-window -v \; split-window -h \;
```
And the resulting session should look like:
```
------------
|          |
|----------|
|    |     |
------------
```

### **Run commands in panes**
To run commands in that panes, just add them with the send-keys 'my-command' command and C-m which executes it:
```bash
#!/bin/sh
tmux new-session \; \
  send-keys 'tail -f /var/log/monitor.log' C-m \; \
  split-window -v \; \
  split-window -h \; \
  send-keys 'top' C-m \; 
```
And the resulting session should look like:
```
------------
|  tail    |
|----------|
|    | top |
------------
```

### Sub-divide
Sub-divide the bottom left pane, so switching either back using last-pane, or in more complex windows, with the `select-pane -t 1` where 1 is the number of the pane in order created starting with 0.
```bash
#!/bin/sh
tmux new-session \; \
  send-keys 'tail -f /var/log/monitor.log' C-m \; \
  split-window -v \; \
  split-window -h \; \
  send-keys 'top' C-m \; \
  select-pane -t 1 \; \
  split-window -v \; \
  send-keys 'weechat' C-m \;
```

Basicaly knowing your way around with split-window and select-pane is all you need. It's also handy to pass with -p 75 a percentage size of the pane created by split-window to have more control over the size of the panes.
```bash
#!/bin/sh
tmux new-session \; \
  send-keys 'tail -f /var/log/monitor.log' C-m \; \
  split-window -v -p 75 \; \
  split-window -h -p 30 \; \
  send-keys 'top' C-m \; \
  select-pane -t 1 \; \
  split-window -v \; \
  send-keys 'weechat' C-m \;
```
And the resulting session should look like:
```
------------------
|      tail      |
|----------------|
|          | top |
|----------|     |
| weechat  |     |
------------------
```

### **Note**
`\;` passes the semicolon to tmux instead of bash

## Naming Session
`tmux new-session -s "myName"`

## Naming Window
`tmux new-session -n "myWindowName"`

## Renaming Window (not Pane)
`rename-window -t 0 "myWindowName"`

---

# Examples
## Vertical with clock
```bash
#!/bin/sh
tmux new-session \; \
  split-window -h \; \
  split-window -v \; \
  clock-mode -t 2 \; \
  select-pane -t 0 \;
```
And the resulting session should look like:
```
-------------
|     |     |
|     |-----|
|     |clock|
-------------
```

## Horizontal with clock
```bash
#!/bin/sh
tmux new-session \; \
  split-window -v \; \
  split-window -h -p 40 \; \
  clock-mode -t 2 \; \
  select-pane -t 0 \;
```
And the resulting session should look like:
```
------------------
|                |
|----------|-----|
|          |Clock|
------------------
```
