#!/bin/bash
mkdir -p $HOME/purwadhika/
mkdir -p backup_log /tmp/benynur/
cd $HOME/purwadhika/
cat /var/log/syslog |grep -i systemd |tail -3 > systemlog.txt
tar cvf backuplog_$DATE.tar.gz systemlog.txt
ln backuplog_$DATE.tar.gz /tmp/benynur/backup_log
echo "Task Done"
