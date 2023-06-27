#!/bin/sh
echo "*** Rails Project Setup ***"
[ -f /app/albums/bin/rails ] || rails new /app/albums  -d postgresql -T
/app/albums/bin/bundle install
/app/albums/bin/rails db:prepare
rm -fr /app/albums/tmp/pids/server.pid
/app/albums/bin/rails s -b 0.0.0.0
