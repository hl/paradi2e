#!/bin/sh

apt update && apt -y install inotify-tools

(cd .docker/ && docker-compose up -d)

mix hex.local --force
mix deps.get
mix ecto.setup
