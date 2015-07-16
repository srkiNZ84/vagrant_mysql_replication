#!/bin/bash

GTIDPURGED=`grep binlog_pos /var/lib/mysql/xtrabackup_info | cut -f 4 -d\'`
