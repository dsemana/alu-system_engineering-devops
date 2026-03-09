#!/bin/bash
# 0-transfer_file
# Transfers a file to a remote server using scp
# Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY

if [ "$#" -lt 4 ]; then
    echo "Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY"
    exit 1
fi

FILE="$1"
IP="$2"
USER="$3"
SSH_KEY="$4"

scp -i "$SSH_KEY" -o StrictHostKeyChecking=no "$FILE" "$USER@$IP:~/"