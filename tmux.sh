projectName='k8s-test'

folder="~/repos/$projectName"

tmux new-session -d -s 'Mux-Microservices!'

tmux selectp -t 0
tmux send-keys "cd $folder/packages/client" C-m
tmux send-keys "yarn start" C-m

tmux split-window -h
tmux send-keys "cd $folder/packages/query" C-m
tmux send-keys "yarn start" C-m

tmux selectp -t 0

tmux split-window -v
tmux send-keys "cd $folder/packages/posts" C-m
tmux send-keys "yarn start" C-m

tmux split-window -v
tmux send-keys "cd $folder/packages/comments" C-m
tmux send-keys "yarn start" C-m

tmux selectp -t 3

tmux split-window -v
tmux send-keys "cd $folder/packages/moderation" C-m
tmux send-keys "yarn start" C-m

tmux split-window -v
tmux send-keys "cd $folder/packages/event-bus" C-m
tmux send-keys "yarn start" C-m

tmux selectp -t 0

tmux attach-session -t 'Mux-Microservices!'
