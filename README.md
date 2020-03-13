# Prerequisites

Install YAD to have an icon shown in your systray, for deb based distributions:

```bash
sudo apt install yad
```

# Configuration

* Adjust in bin/backup-config.sh the following variables:
  * RSYNCUSER
  * RSYNCADDR
  * RSYNCDIR
* Copy *bin* content into bin folder under your home.
* Copy the content of *crontab-e* inside ```crontab -e``` editor to have the backup running each hour for increments and once a week for full backup, cleaning all that'a older than one month.

# SSH for Rsync

AKA make rsync work without a password prompt.

```bash
ssh-keygen -t rsa
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
ssh-copy-id -i ~/.ssh/id_rsa.pub -p 22 rsync@<YOUR-NAS-IP-ADDRESS>
ssh -p '22' 'rsync@<YOUR-NAS-IP-ADDRESS>'
```