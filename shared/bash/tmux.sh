tm() {
    SESSION=$(tmux list-session | cut -d' ' -f1 | fzf)
    eval "$(tmux attach "$@" -t "$SESSION")"
}
