[![GitHub release](https://img.shields.io/github/release/sismics/docker-borgbackupgen-php.svg?style=flat-square)](https://github.com/sismics/docker-backupninja/releases/latest)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## About
Generate an Backupninja configuration file for multi-container backup

## Description

This dockerfile generates configuration files for Backupninja.

## Usage

Run containers to be backuped with the following environment variable:

``
docker run [...] -e 'BACKUP_VOLUME=true'
``

This will enable backup of all volumes used by this container.