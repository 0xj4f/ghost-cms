# Things to do 

## FRESH install Ghost-CMS

Create Database for ghost mysql 5.7
```
docker exec -it ghost-cms_db_1 sh 
create database ghost;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';
```

Create Database for ghost mysql 8
```
create database ghost;
CREATE USER 'root'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;
```