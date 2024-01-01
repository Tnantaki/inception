> This has not finish yet
# inception
## learn docker
- execute `make` for run server, execute `make down` to down server.
### step 01
#### description
- server nginx that serve default website via port `100`.
- open browser with URL `localhost:100`.
#### knowledge
- Basic of configure nginx
- Basic of Dockerfile, Docker compose
##### Question : Why do need to use
```Dockerfile
CMD		[ "nginx", "-g", "daemon off;" ]
```
- This command will make nginx not run on the backgroud, That make container stay running.
### step 02
- server nginx, wordpress wiht php-fmp, mariadb in one container.
- open browser with URL `localhost:120`.
#### knowledge
- Install 3 service to serve wordpress browser.
- Pass environment in Docker.
##### Question : What different between `args` and `env_file`
- `args` will defined on the build-time but `envs` will defined on run-time. `args` will be not longer on run-time.
### step 03
- 2 container, nginx and wordpress.
- open browser with URL `localhost:130`.
#### knowledge
- How nginx server can connect to php server and transfer data.
- Docker volume.
##### Question : Why we need to use *Volume* and mount to nginx server even we have wordpress server to pass content
- `Volume` use to persist data, The reason we mount nginx server to wordpress-database for access data that not have to use php-fpm to convert. if we don't mount ningx sever to wordpress-database, image will not display.
### step 04
- 3 container, nginx, wordpress and mariadb.
- open browser with URL `localhost:140`.
#### knowledge
- How wordpress-php sever talk to mariadb server.
- Environment file
##### Question : Why we need to install `mysql_secure_installation`
- it's kinda restrict to install `mysql_secure_installation` to make wordpress-php server access to mariadb server.
## src