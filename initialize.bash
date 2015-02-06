#!/bin/bash

# If
#   (not within Vagrant Guest OS) and (not within Travis)
# then
#    exit 1

if [ `whoami` != "vagrant" ] && [ `whoami` != "travis" ];
then
    echo The command should be executed within the guest OS!
    exit 1
fi

WHOAMI=`whoami`

sudo mkdir -p /tmp/symfony2app/app/cache
sudo mkdir -p /tmp/symfony2app/app/logs
sudo mkdir -p /tmp/symfony2app/app/cache/sessions

sudo chmod -R 0777 /tmp/symfony2app
sudo chown -R "${WHOAMI}:${WHOAMI}" /tmp/symfony2app


