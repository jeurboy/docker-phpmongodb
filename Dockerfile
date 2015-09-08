FROM yoshz/apache-php:5.5

MAINTAINER jeurboy jeurboy@gmail.com

ENV MONGO_ADMIN_USERNAME        admin
ENV MONGO_ADMIN_PASSWORD        password

ENV MONGO_SERVER        localhost
ENV MONGO_PORT          27017
ENV MONGO_USERNAME      admin
ENV MONGO_PASSWORD      password

RUN git clone https://github.com/phpmongodb/phpmongodb.git && \
	rm /var/www/html/*  

RUN cp -rp  phpmongodb/* /var/www/html/ 

ADD sources/service_start /
RUN chmod +x /service_start

EXPOSE 80

CMD /service_start