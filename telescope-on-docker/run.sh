#!/usr/bin/env bash

# Make sure it is NOT root that runs our script
if [[ $EUID -eq 0 ]]; then
   echo "This script must NOT be run as root" 1>&2
   exit 1
fi

cd /homes/telescope/Telescope

meteor