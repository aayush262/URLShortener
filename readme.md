# laravel project

A simple URLshortener in Laravel

# HOw TO RUN

1. Run
**composer install**
in the required directory
For eg: C:\xampp\htdocs\URLShortener-master

2. copy the .env.example and rename it ti .env

3. edit the .env file to give the name of database u created in localhost/phpmyadmin 
for eg DB_DATABASE= name_of_databse
       DB_USERNAME=root
       DB_PASSWORD=
       
4. run
      **php artisan migrate**
   to migrate all the tables in ur database.

5. run the local testing server
    For eg http://localhost/URLShortener-master/public/
   to display the project in your browser.
   
