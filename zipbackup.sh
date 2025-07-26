#!/bin/bash
(
scriptname=$0
Executedtime=$(date +%F%T) 
echo "backup for scripts in bin is taken at" $Executedtime " by running" $scriptname
Source_dir=/home/anjana/bin/*.sh
Dest_dir=/home/rapunzel/scriptbackup/backuparchive/zipbackup_$Executedtime.tar.gz

tar -czvf $Dest_dir $Source_dir ||echo "failed to compress"
)>>/home/anjana/backuplogs/backup.log 2>&1
echo "Files compressed and backup has taken" ||echo "backup failed"


 
