# mysql-for-development

## [mysqld](./mysqld)

Creates MySQL server and Adminer containers with docker-compose.<br>
A set of .bat files for Windows to start (up.bat) and stop (down.bat) docker-compose are included.

After running start.bat, you can access the Adminer interface from the following URL:
* http://localhost:8080/?server=mysqld&username=root

## [init-db](./init-db)

An example of a shell script to initialize a database schema.<br>
To eliminate the dependencies to the environment where the script is executed, the script is run on a docker cointainer.<br>
A .bat file for Windows to run the docker container through WSL2.
