#!/usr/bin/env zsh
# Stolen from oh-my-zsh check for update script
# used to check for last time run of my backup.sh script on login, and if not run in 24 hours, 
# run it.
zmodload zsh/datetime

function _current_epoch() {
  echo $(( $EPOCHSECONDS / 60 / 60 / 24 ))
}

function _update_last_backup() {
  echo "LAST_EPOCH=$(_current_epoch)" >! ~/.last-backup
}

function _backup_run() {
  env ZSH=$ZSH sh /Users/paul/backup.sh
  # update the zsh file
  _update_last_backup
}

epoch_target=1 # set for one day
if [[ -z "$epoch_target" ]]; then
  # Default to old behavior
  epoch_target=1
fi

if mkdir "$ZSH/log/paul-backup.lock" 2>/dev/null; then
  if [ -f ~/.last-backup ]; then
    . ~/.last-backup

    if [[ -z "$LAST_EPOCH" ]]; then
      _update_last_backup && return 0;
    fi

    epoch_diff=$(($(_current_epoch) - $LAST_EPOCH))
    echo "...last backup $epoch_diff days ago"
    if [ $epoch_diff -gt $epoch_target ]; then
        echo "running backup"
	_backup_run
	_update_last_backup
        clear
        echo "Backup Completed to iCloud"
    else 
	echo "skipping backup until tomorrow"
    fi
  else
    # create the zsh file
    _update_last_backup
  fi

  rmdir $ZSH/log/paul-backup.lock
fi
