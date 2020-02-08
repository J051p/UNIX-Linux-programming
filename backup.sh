#!/bin/bash

SRCDIR="/home/josip/Desktop/Python/"
DESTDIR="/home/josip/Backups/"
FILENAME=ug-$(date +%-Y%-m%-d)-$(date +%-T).tgz
tar --create --gzip --file=$DESTDIR$FILENAME $SRCDIR
