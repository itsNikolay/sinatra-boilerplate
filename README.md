# Sinatra Boilerplate App

## Setup App

```bash
bin/setup
# or
cp .env.example .env
```

## Run tests

```bash
bin/rake
# or
docker-compose exec app bin/rake
```

## Run server

```bash
bin/rake s
```

## Create Migration

```bash
bin/rake db:create_migration NAME=create_users
bin/rake db:migrate
# or
docker-compose exec app bin/rake db:migrate
```

## Run Docker

```sh
bin/docker_cmd
```

## License

The MIT License (MIT)
