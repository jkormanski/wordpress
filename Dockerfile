FROM centos:latest
USER root

ADD ./start.sh /start.sh
ADD ./foreground.sh /etc/apache2/foreground.sh

ADD http://wordpress.org/latest.tar.gz /wordpress.tar.gz
RUN tar xvzf /wordpress.tar.gz -C /var/www/html/ --strip=1

#RUN mv /wordpress/* /var/www/html/.
#RUN chown -R apache:apache /var/www/

RUN chmod 755 /start.sh
RUN chmod 755 /etc/apache2/foreground.sh

EXPOSE 80
EXPOSE 22

CMD ["/bin/bash", "/start.sh"]
