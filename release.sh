#!/bin/bash
set -e 

SITE="cms"

rsync -av --progress --delete . $1:~/containers/$SITE --exclude ./data --exclude .git --exclude .gitignore --exclude ./app/node_modules

#ssh $1 << EOF
#    cd ~/containers/$SITE
#    docker-compose build
#    echo y | docker-compose up -d --force-recreate
#EOF
