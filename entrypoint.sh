#!/bin/sh

if [ ! -f '/etc/transmission/settings.json' ]; then
  echo "Copying the default settings.json file..."
  cp /etc/transmission_defaults.json /etc/transmission/settings.json
fi

exec "$@"