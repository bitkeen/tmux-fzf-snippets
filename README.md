# tmux-fzf-snippets
A very simple plugin that allows to insert snippets. Based on [tmux-fzf-url](https://github.com/wfxr/tmux-fzf-url).

The main use case is for docker containers or remote hosts.

The snippets are read from a plaintext file where each line is a separate
snippet. Tmux buffer selection menu can be used for similar purposes, but is
less convenient.


### Configuration
`@fzf-snippets-bind`: binding to run the plugin. Default is `Prefix+a`.

`@fzf-snippets-file`: plaintext file from which to get the snippets. Default is `~/.tmux/snippets`.

`@fzf-snippets-fzf-options`: options that are passed to `fzf-tmux`. See default in `fzf-snippets.sh`.

### Installation
##### tpm
Add this line to your tmux config file, then hit `prefix + I`:
```tmux
set -g @plugin 'bitkeen/tmux-fzf-snippets'
```
##### Manual
Clone this repo and source `fzf-snippets.tmux` in tmux config file:
```tmux
run-shell ~/.tmux/plugins/tmux-fzf-snippets/fzf-snippets.tmux
```
