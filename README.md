# Prerequisites

Install YAD to have an icon shown in your systray, for deb based distributions:

```bash
sudo apt install yad
```

# Configuration

Adjust in bin/backup-config.sh the remote.
Copy the content of *crontab-e* inside ```crontab -e``` editor.
Copy *bin* content into bin folder under your home.

# SSH for Rsync

ssh-keygen -t rsa
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
ssh-copy-id -i ~/.ssh/id_rsa.pub -p 22 rsync@192.168.121.105
ssh -p '22' 'rsync@192.168.121.105'
