# Docker Compose Dev Kit

Quickly set up a `docker-compose` based LEMP stack for local development

After using [Laradock](https://github.com/laradock/laradock) extensively for local development, I found I needed something
a little lighter to use for quick projects. This repo is heavily influenced by Laradock, but considerably lighter and with fewer features.

## Quick Start

1. `cp env-example .env` and add your settings
1. `cp db/docker-entrypoint-initdb.d/createdb.sql.example db/docker-entrypoint-initdb.d/createdb.sql`. Edit to create the database and user.
1. `docker-compose up -d` - On first run, the `createdb.sql` file will be executed.
1. Open `http://localhost:${LOCAL_PORT}`

## Usage

### Access Workspace Container
Access: `docker-compose exec --user=cli workspace sh`

This is the place to run any of your migrations, `composer install`, etc. Very bare bones workspace and could be upgraded to use `bash` or `zsh` in the future.

The user `cli` has UID 1000 so operations should create the files as your local user on Linux distros.

### Other Containers

Standard `docker-compose` commands


You can use the base images as jumping off points or create your own `Dockerfile`s to customize them. 
