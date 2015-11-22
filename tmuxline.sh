# This tmux statusbar config was created by tmuxline.vim
# on 日, 22 11月 2015

set -g status-bg "colour23"
set -g message-command-fg "colour231"
set -g status-justify "left"
set -g status-left-length "100"
set -g status "on"
set -g pane-active-border-fg "colour36"
set -g message-bg "colour29"
set -g status-right-length "100"
set -g status-right-attr "none"
set -g message-fg "colour231"
set -g message-command-bg "colour29"
set -g status-attr "none"
set -g status-utf8 "on"
set -g pane-border-fg "colour29"
set -g status-left-attr "none"
setw -g window-status-fg "colour231"
setw -g window-status-attr "none"
setw -g window-status-activity-bg "colour23"
setw -g window-status-activity-attr "none"
setw -g window-status-activity-fg "colour36"
setw -g window-status-separator ""
setw -g window-status-bg "colour23"
set -g status-left "#[fg=colour231,bg=colour36] #S #[fg=colour36,bg=colour23,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=colour29,bg=colour23,nobold,nounderscore,noitalics]#[fg=colour231,bg=colour29] %Y-%m-%d  %H:%M #[fg=colour36,bg=colour29,nobold,nounderscore,noitalics]#[fg=colour231,bg=colour36] #h "
setw -g window-status-format "#[fg=colour231,bg=colour23] #I #[fg=colour231,bg=colour23] #W "
setw -g window-status-current-format "#[fg=colour23,bg=colour29,nobold,nounderscore,noitalics]#[fg=colour231,bg=colour29] #I #[fg=colour231,bg=colour29] #W #[fg=colour29,bg=colour23,nobold,nounderscore,noitalics]"
