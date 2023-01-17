#!/bin/sh
SCRIPT_DIR="$(dirname "$0")"

tmux_get() {
    # $1: option
    # $2: default value
    value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

key="$(tmux_get '@fzf-snippets-bind' 'a')"
snippets_file="$(tmux_get '@fzf-snippets-file' "$HOME/.tmux/snippets")"

tmux bind-key "$key" run -b "$SCRIPT_DIR/fzf-snippets.sh '$snippets_file'"
