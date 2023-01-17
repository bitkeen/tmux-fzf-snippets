#!/bin/sh
get_fzf_options() {
    fzf_default_options='-d 35% --exit-0 --no-preview --no-border --header="Choose snippet" --header-first'
    fzf_options="$(tmux show -gqv '@fzf-snippets-fzf-options')"
    [ -n "$fzf_options" ] && echo "$fzf_options" || echo "$fzf_default_options"
}

fzf_filter() {
  eval "fzf-tmux $(get_fzf_options)"
}

chosen="$(fzf_filter < "$1")"
[ -z "$chosen" ] && exit

tmux set-buffer "$chosen"
tmux paste-buffer
