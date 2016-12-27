# docker-borgbackupgen
Generate an Backupninja configuration file for multi-container backup

## Description

This dockerfile generates configuration files for Backupninja.

## Usage

Run containers to be backuped with the following environment variable:

``
docker run [...] -e 'BACKUP_VOLUME=true'
``

This will enable backup of all volumes used by this container.