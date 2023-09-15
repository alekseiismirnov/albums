#!/bin/sh
echo "*** Rails Project Setup ***"
[ -f /app/albums/bin/rails ] || rails new /app/albums -d postgresql -T -s -c bootstrap --skip-git
/app/albums/bin/bundle install
/app/albums/bin/rails db:prepare
#FIXME /app/albums/bin/bundle exec spring binstub rspec
#FIXME /app/albums/bin/rails css:install:bootstrap 

rm -fr /app/albums/tmp/pids/server.pid
/app/albums/bin/rails s -b 0.0.0.0
