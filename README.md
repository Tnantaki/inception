# inception
> This project aim to using Docker to virtualize 3 server. Webserver, PHP-server and Database server to serve Wordpress webpage. I have to write dockerfile base on Debian OS and install individual packages , configuration files on each container. And all of it can be call by Docker-compose.
### Servers Diagram
![](images/server_diagram.png)

---
## 📝Usage
### 1. Requirement
1. You must have Docker on your PC.
2. I name domain name as the Intra name. So if you want to run on PC, You have to map loopback IP address to take my domain name too.
#### On Linux
```bash
sudo vim /etc/hosts
```
![](images/add_domain.png)
#### On Windows
Map on this path with administrator `c:\Windows\System32\Drivers\etc\hosts`

---
### 2. Execution
To run servers, run `make` on **inception** directory.

```bash
$ make
```

> ⚠️ Warning
>
>  You need to let me create directory to mount volumes. maybe you have to fill the password of your sudo.
---
### 3. Usage
1. After run server successful, open any browser in your PC with this URL https://tnantaki.42.fr and preceed with unsafe
 ![](images/secure_webpage.png)
 
2. Tada, My wordpress homepage.
 ![](images/wordpress_webpage.png)

3. You can login via https://tnantaki.42.fr/wp-admin with my user and password as I store on `./src/.env` at section Wordpress environment.
 ![](images/login_webpage.png)

