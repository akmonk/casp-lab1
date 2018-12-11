Для сборки контейнера использовать команду </br>
docker build -t akmonk/apache2 ./  </br>
Для запуска контейнера использовать команду </br>
docker run --name my-httpd -p8088:80 -v /root/lab1/httpd:/etc/httpd -d akmonk/apache2
