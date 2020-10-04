#!/bin/bash
set -e 

SITE="cms"

rsync --recursive -av --progress --delete \
    --exclude /.* \
    --exclude /node_modules \
    --exclude /build \
    --exlude release.sh \
    ../ $1:~/containers/$SITE/app

ssh $1 << EOF
    cd ~/containers/$SITE/strapi
    docker-compose build
    echo y | docker-compose up -d --force-recreate
EOF
