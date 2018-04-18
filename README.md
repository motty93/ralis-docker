# Rails on Docker

## new project
$ docker-compose run web rails new . --force --database=mysql --skip-bundle

## if there is a project, and you correct a Gemfile.
$ docker-compose build

## rails server
$ docker-compose up

## rails db:create
$ docker-compose run web rails(rake) db:create

