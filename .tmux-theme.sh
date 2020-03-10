# status bar
set -g status-interval 1
set -g status-justify centre
set -g status-bg colour235
set -g status-fg colour15

# user@hostname on left of status bar
set -g status-left-length 60
set -g status-left "🐵  #(id -un)"

# clock on right of status bar
set -g status-right-length 60
set -g status-right " #{battery_icon}#{battery_percentage} - %d %b %Y - %H:%M:%S %p"

# default window title colors
set -g window-status-style bg=default,fg=colour245
set -g window-status-format "#I #W"

# active window title colors
set -g window-status-current-style bg=default,fg=colour15
set -g window-status-current-format '#{?pane_synchronized,#[fg=blue]***#[default],}#I:#W#F#{?pane_synchronized,#[fg=blue]***#[default],}'

# set inactive/active window styles
set -g window-style bg=colour236,fg=colour247
set -g window-active-style bg=black,fg=colour250
 
# pane border
set -g pane-border-style bg=colour235,fg=colour238
set -g pane-active-border-style bg=colour236,fg=colour47
