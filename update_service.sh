#!/bin/bash

cd /home/brandon/GIT/hello-world-node

git fetch origin

LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/Deployment)

if [ $LOCAL != $REMOTE ]; then
    echo "Changes detected, pulling updates..."
    git pull origin Deployment

    sudo systemctl restart hello-world
else
    echo "No changes detected."
fi
