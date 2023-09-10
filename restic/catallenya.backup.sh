#! /usr/bin/bash

. /etc/restic/restic-config

echo "Starting restic backup with the following configs:"
cat /etc/restic/restic-config

restic -r ${RESTIC_DRIVER}:${RESTIC_RCLONE_REMOTE}:${RESTIC_BACKUP_LOCATION} --verbose backup ${SYNCTHING_BACKUP_TARGET} ${MEMOS_BACKUP_TARGET} ${VAULTWARDEN_BACKUP_TARGET} ${RADICALE_BACKUP_TARGET} ${FLAME_BACKUP_TARGET} ${IMMICH_BACKUP_TARGET} ${PGBACKUPS_BACKUP_TARGET} --password-file /etc/restic/restic-password
