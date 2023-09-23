#!/bin/sh
echo "*** Rails Project Setup ***"
 ! [ -x /app/albums/bin/rails ] && { rails new /app/albums -d postgresql -T -s -c bootstrap --skip-git
/app/albums/bin/bundle install
/app/albums/bin/rails db:prepare
/app/albums/bin/bundle exec spring binstub rspec
/app/albums/bin/rails css:install:bootstrap 
bin/importmap pin bootstrap --download 
/app/albums/bin/importmap pin glightbox --download
}

rm -fr /app/albums/tmp/pids/server.pid
/app/albums/bin/rails s -b 0.0.0.0
