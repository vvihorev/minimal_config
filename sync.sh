#!/bin/bash

PASS=
USER=
HOST=
HOST_DIR=

if [ $# -eq 1 ]; then
    echo sync_from
    sshpass -p $PASS rsync -av \
        --exclude='.git' \
        --exclude='.gitignore ' \
        --exclude='sync.sh' \
        $USER@$HOST:$HOST_DIR -dir .
else
    echo sync_to
    sshpass -p $PASS rsync -av \
        --exclude='.git' \
        --exclude='.gitignore ' \
        --exclude='sync.sh' \
        . -dir $USER@$HOST:$HOST_DIR
fi

