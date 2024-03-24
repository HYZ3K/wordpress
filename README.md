```
sudo apt update & sudo apt upgrade
```

```
sudo apt install docker.io
```

```
sudo apt install docker-compose
```

```
git clone https://github.com/HYZ3K/wordpress.git
```

```
cd wordpress
```

```
sudo docker-compose up
```


For Moving Docker Files To (/var/www/html):
We Need CONTAINER_ID Of Wordpress:

```
sudo docker ps -a 
```

```
sudo docker exec -it $containerid bash
```
