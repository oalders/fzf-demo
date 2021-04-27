commands() {
    SELECTION=$(cat shared/bash/list-commands.txt | fzf --reverse)
    COMMAND=$(echo $SELECTION | cut -d'#' -f2-)

    echo "Running $COMMAND"
    eval $COMMAND
}
