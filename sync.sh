#!/bin/bash

PASS=
USER=
HOST=
HOST_DIR=

sshpass -p $PASS rsync -av \
    --exclude='.git' \
    --exclude='.gitignore ' \
    --exclude='sync.sh' \
    . -dir $USER@$HOST:$HOST_DIR

