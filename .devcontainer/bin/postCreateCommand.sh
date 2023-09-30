#!/bin/sh

apt update && apt -y install inotify-tools

(cd .docker/ && docker-compose up -d)

mix local.hex --force
mix deps.get
mix ecto.setup
