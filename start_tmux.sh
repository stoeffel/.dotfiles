#!/bin/sh
export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0

# startup a "default" session if none currently exists
tmux has-session -t _default || tmux new-session -s _default -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=("MUX" "NEW SESSION" $(tmux list-sessions -F "#S"))
echo "Available sessions"
echo "------------------"
echo " "
select opt in "${options[@]}"
do
    case $opt in
        "NEW SESSION")
            read -p "Enter new session name: " SESSION_NAME
            tmux new -s "$SESSION_NAME"
            break
            ;;
        "MUX")
            read -p "start mux session: " SESSION_NAME
            echo tmuxinator start $SESSION_NAME
            zsh --login -c "tmuxinator start ${SESSION_NAME}"
            break
            ;;
        *)
            tmux attach-session -t $opt
            break
            ;;
    esac
done
