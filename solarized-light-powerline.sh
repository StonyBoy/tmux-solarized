# Solarized Light - Tmux Theme
# Based on Powerline Gray by Jim Myhrberg <contact@jimeh.me>.
#
# Inspired by vim-powerline: https://github.com/Lokaltog/powerline
#
# Requires terminal to be using a powerline compatible font, find one here:
# https://github.com/Lokaltog/powerline-fonts
#
# SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
# --------- ------- ---- -------  ----------- ---------- ----------- -----------
# base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
# base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
# base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
# base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
# base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
# base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
# base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
# base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
# yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
# orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
# red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
# magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
# violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
# blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
# cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
# green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

# Status update interval
set -g status-interval 1

# Basic status bar colors
set -g status-fg colour245 # base1
set -g status-bg white # base2

# Left side of status bar
set -g status-left-style "bg=white,fg=colour243"
set -g status-left-length 46
set -g status-left "#[fg=colour33,bg=white] #{?client_prefix,#[reverse]#[noreverse],} #[fg=white,bg=colour64]#[fg=white,bg=colour65,nobold] #S #[fg=colour64,bg=white]"

# Right side of status bar
set -g status-right-style "bg=white,fg=colour243"
set -g status-right-length 150
set -g status-right "#[fg=colour136,bg=white]#[fg=white,bg=colour136] #H #[fg=colour245,bg=colour136]#[fg=white,bg=colour245] %H:%M #[fg=white,bg=colour245]#[fg=colour245,bg=white] %d-%b-%y #[fg=white,bg=colour245]"

# Window status
set -g window-status-format "  #I #W #{?window_zoomed_flag,, }"
set -g window-status-current-format "#[fg=white,bg=colour33]#[fg=white,nobold] #I #W #{?window_zoomed_flag,, }#[fg=colour33,bg=white,nobold]"

# Current window status
set -g window-status-current-style "bg=colour33,fg=white"

# Window with activity status
set -g window-status-activity-style "bg=colour243,fg=white" # fg and bg are flipped here due to a bug in tmux

# Window separator
set -g window-status-separator ""

# Window status alignment
set -g status-justify centre

# Pane border
set -g pane-border-style "bg=default,fg=white"

# Active pane border
set -g pane-active-border-style "bg=default"

# Pane number indicator
set -g display-panes-colour white
set -g display-panes-active-colour colour245

# Clock mode
set -g clock-mode-colour white
set -g clock-mode-style 24

# Message
set -g message-style "bg=white,fg=brightred"

# Command message
set -g message-command-style "bg=white,fg=brightred"

# Mode
set -g mode-style "bg=colour37,fg=white"

