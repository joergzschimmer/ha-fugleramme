#!/bin/sh
set -eu

# HA OS mounts /data as a persistent app directory. The original
# Fugleramme application runs with UID/GID 1000.
chown 1000:1000 /data
exec gosu fugleramme fugleramme-frame --config /data/settings.json --output /data/frame.png
