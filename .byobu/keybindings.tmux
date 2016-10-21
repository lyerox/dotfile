set -g prefix C-o
unbind-key -n C-a

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind i display-message

bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection

# paste
unbind C-p
bind C-p paste-buffer

# window splitting
unbind %
bind | split-window -h
unbind '"'
bind - split-window -v

# resize panes
bind -r H resize-pane -L 5
bind -r J resize-pane -D 2
bind -r K resize-pane -U 2
bind -r L resize-pane -R 5

