# Simple Docker

1. Готовый докер 
2. Операции с контейнером 
3. Мини веб-сервер 
4. Свой докер 
5. Dockle 
6. Базовый Docker Compose

###  1. Готовый докер

* Возьми официальный докер-образ с nginx и выкачай его при помощи docker pull и проверь наличие докер-образа через docker images:

  
![image.png](images/1.png)



* Запусти докер-образ через docker run -d [image_id|repository] и проверь, что образ запустился через docker ps.


![image.png](images/3.png)



* Посмотри информацию о контейнере через docker inspect [container_id|container_name]:


![image.png](images/4.png)


* По выводу команды определи и помести в отчёт размер контейнера, список замапленных портов и ip контейнера.

размер контейнера:


  ![image.png](images/5.png)
  
  
список замапленных портов:


  ![image.png](images/6.png)
  

ip контейнера:

  ![image.png](images/7.png)
  

* Останови докер контейнер через docker stop [container_id|container_name].

![image.png](images/8.png)

* Проверь, что контейнер остановился через docker ps:

![image.png](images/9.png)


* Запусти докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду run:

 ![image.png](images/10.png)

* Проверь, что в браузере по адресу localhost:80 доступна стартовая страница nginx:

 ![image.png](images/11.png)


* Перезапусти докер контейнер через docker restart [container_id|container_name] и проверь любым способом, что контейнер запустился:


 ![image.png](images/12.png)

 

 ![image.png](images/13.png)

### Part 2. Операции с контейнером

* Прочитай конфигурационный файл nginx.conf внутри докер контейнера через команду exec:
 ![image.png](images/14.png)

* Создай на локальной машине файл nginx.conf. Настрой в нем по пути /status отдачу страницы статуса сервера nginx:

   ![image.png](images/15.png)

* Скопируй созданный файл nginx.conf внутрь докер-образа через команду docker cp:


 ![image.png](images/16.png)
 

* Перезапусти nginx внутри докер-образа через команду exec:

 ![image.png](images/17.png)


* Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx:


 ![image.png](images/18.png)



![image.png](images/19.png)

* Экспортируй контейнер в файл container.tar через команду export. Останови контейнер.:

 ![image.png](images/20.png)



* Удали образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры. Удали остановленный контейнер:

 ![image.png](images/21.png)
 

* Импортируй контейнер обратно через команду import.Запусти импортированный контейнер:

 ![image.png](images/22.png) 

* Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx:

 ![image.png](images/23.png)

### Part 3. Мини веб-сервер

Напиши мини-сервер на C и FastCgi, который будет возвращать простейшую страничку с надписью Hello World!.


![image.png](images/33.png) 

Запусти написанный мини-сервер через spawn-fcgi на порту 8080.

![image.png](images/39.png) 


Напиши свой nginx.conf, который будет проксировать все запросы с 81 порта на 127.0.0.1:8080.


![image.png](images/32.png) 


Скопировала файлы в контейнер:

![image.png](images/36.png) 


Запустила сервис:

![image.png](images/38.png)


Перезапустила nginx:


![image.png](images/37.png)


Проверь, что по localhost:81 отдается написанная тобой страничка.


![image.png](images/34.png) 


Положи файл nginx.conf по пути ./nginx/nginx.conf (это понадобится позже).

# Part 4. Свой докер

Создала Dockerfile, который использует базовый nginx. Монтируем дирректории внутрь контейнера и прописываем установку, необходимых :



   ![image.png](images/48.png)



Создала файл entrypoint:



   ![image.png](images/47.png) 



Собираю написанный докер-образ через docker build, указаваю имя и тег: 



  ![image.png](images/43.png) 



Проверяю наличие образа командой: docker images:




  ![image.png](images/44.png) 
  

Запускаю собранный докер-образ с маппингом 81 порта на 80 на  и монтированием папки ./nginx внутрь контейнера по адресу, где лежат конфигурационные файлы nginx'а:



  ![image.png](images/45.png) 



Проверяю, что по localhost:80 доступна страничка написанного мини сервера:



  ![image.png](images/49.png) 

  
  ![image.png](images/46.png) 



  
Допиcала в ./nginx/nginx.conf проксирование странички /status, по которой надо отдавать статус сервера nginxЖ


  ![image.png](images/50.png) 


Вошла в контейнер и перезапустила nginx:



  ![image.png](images/51.png) 


  
Проверь, что теперь по localhost:80/status отдается страничка со статусом nginx:



  ![image.png](images/52.png) 


# Part 5. Dockle


Для начала необходимо установить утилиту Dockle.


Проверяяем утилитой Dockle:



 ![image.png](images/54.png)


 ![image.png](images/53.png)




 Исправляем ошибки в Dockerfile и пересобираем контейнер:



 ![image.png](images/55.png)




 Проверяем изменения:
 


  
 ![image.png](images/56.png)

# Part6. Basic Docker Compose


Для начала необходимо устновить docker-compose, если он не устновился с docker. 


Потом необходимо остановить существующие к контейнеры.

 
 ![image.png](images/57.png)


Напишем конфигурационный файл docker-compose.yml



 
 ![image.png](images/58.png)



 Пересобираем и запускам:


  ![image.png](images/59.png)



  ![image.png](images/61.png)



  Контейнеры поднялись, проверяем в барузере ответ:

  
  
  ![image.png](images/62.png)
