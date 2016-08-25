source $BYOBU_PREFIX/share/byobu/profiles/tmux

set-option -g default-shell /bin/zsh

bind C-o send-prefix

#kill panel without confirm
bind-key x kill-pane
setw -g mode-keys vi

set-option -g allow-rename off

bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection

set -g base-index 1 # start windows numbering at 1
setw -g pane-base-index 1 # make pane numbering consistent with windows

# create new session
bind C-c new-session

# find session
bind C-f command-prompt -p find-session 'switch-client -t %%'


# Copy mode --------------------------------------------------------------------

bind Enter copy-mode # enter copy mode
bind b list-buffers # list paster buffers
# bind p paste-buffer # paste from the top pate buffer
bind P choose-buffer # choose which buffer to paste from

bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection
bind -t vi-copy H start-of-line
bind -t vi-copy L end-of-line

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-pain-control'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-open'

run '~/.tmux/plugins/tpm/tpm'
