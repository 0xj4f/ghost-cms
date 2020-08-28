# Things to do 

## FRESH install Ghost-CMS

Create Database for ghost
```
docker exec -it ghost-cms_db_1 sh 
create database ghost;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';
```