# Learn Docker
> Execute `make` for run server, execute `make down` to down server.
> I set Nginx Server serve website via port `1024`. So open browser with URL `localhost:1024`.
---
### step 01 -Nginx Server
#### knowledge
- Basic of configure nginx
- Basic of Dockerfile, Docker compose
> [!NOTE] Why do need to use this command
> ```Dockerfile
> CMD		[ "nginx", "-g", "daemon off;" ]
> ```
> - This command will make nginx are **not** running on the background, That make container stay running.
---
### step 02 -3in1 Server
#### knowledge
- server nginx, wordpress with php-fpm, mariadb in one container.
- Install 3 service to serve wordpress browser.
- Pass environment in Docker.
> [!NOTE] What different between `args` and `env_file`?
> - `args` will defined on the build-time but `envs` will defined on run-time. `args` will be not longer on run-time.
---
### step 03 - 2 container with connection
#### knowledge
- 2 container, nginx and wordpress.
- How nginx server can connect to php server and transfer data.
- Docker volume.
> [!NOTE] Why we need to use `Volume` to keep **Wordpress-database** and mount Nginx Server to, Even though we have PHP Server to pass content?
> - `Volume` use to persist data, The reason we mount Nginx Server to **Wordpress-database** for access data that not have to use php-fpm to convert. if we don't mount Ningx Server to **Wordpress-database**, image will not display.
---
### step 04 - 3 contiainer with connection
#### knowledge
- 3 container, nginx, wordpress and mariadb.
- How wordpress-php server talk to mariadb server.
- Environment file
> [!NOTE] Why we need to install `mysql_secure_installation`?
> - it's kinda restrict to install `mysql_secure_installation` to make wordpress-php server access to mariadb server.
---
### step 05 - 3 container with SSL on Web server
#### knowledge
- 3 container with **SSL** and set 2 user by script
- **SSL** can connect via port `443` or `HTTPS`. So open browser with URL `https://localhost`.