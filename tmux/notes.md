  - Attach to an existing session

        sudo chmod -R 777 /tmp/tmux-502/
        sudo tmux -S /tmp/tmux-502/delfault attach

  - cluster ssh equivlent cssh

        #/bin/sh
        # ssh-everywhere.sh
        for i in $HOSTS
        do
          tmux splitw "ssh $i"
          tmux select-layout tiled
        done
        tmux set-window-option synchronize-panes on
        Now start the whole thing:

        tmux new 'exec sh ssh-everywhere.sh'
