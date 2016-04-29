FROM php:5.6-apache

#USER root
ADD run.sh /run.sh
RUN chmod +x /*.sh
CMD ["/run.sh"]
