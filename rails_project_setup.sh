#!/bin/sh
echo "*** Rails Project Setup ***"
[ -f /app/albums/bin/rails ] || rails new /app/albums -d postgresql -T -s -c bootstrap --skip-git
/app/albums/bin/bundle install
/app/albums/bin/rails db:prepare
# https://stackoverflow.com/questions/70474422/rails-7-link-to-with-method-delete-still-performs-get-request
/app/albums/bin/rails turbo:install stimulus:install
/app/albums/bin/rails importmap:install
/app/albums/bin/bundle exec spring binstub rspec

rm -fr /app/albums/tmp/pids/server.pid
/app/albums/bin/rails s -b 0.0.0.0
