#!/bin/sh
docker info >/dev/null 2>&1 && exit 0
setsid dockerd-rootless >"$XDG_RUNTIME_DIR/dockerd-rootless.log" 2>&1 &
until docker info >/dev/null 2>&1; do sleep 1; done
