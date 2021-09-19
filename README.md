# wordpress-sqlite-docker

Lightweight Wordpress on Alpine with php-fpm ondemand and SQLite instead of MySQL.

## Install

```
docker pull fengluo/wordpress-fpm-sqlite
```

## Example

```
docker run -d -p 9000:9000 --name wp fengluo/wordpress-fpm-sqlite
```

or

```
docker run -d -p 9000:9000 -e WORDPRESS_DB_FILE='db.db' -e WORDPRESS_DB_DIR='/var/www/' --name wp fengluo/wordpress-fpm-sqlite
```

## Tool

`mysql2sqlite` is used for converting mysql to sqlite.

```
./mysql2sqlite wordpress.sql | sqlite db.db
```