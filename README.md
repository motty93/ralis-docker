# Rails on Docker

## new project
$ docker-compose run web rails new . --force --database=mysql --skip-bundle

## if there is a project, and you correct a Gemfile.
$ docker-compose build

## rails server(detached mode)
$ docker-compose up -d

## rails db:create
$ docker-compose run web rails db:create

