# grr, ENTRYPOINT resets CMD now
ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]

#USER root
ADD run.sh /run.sh
RUN chmod +x /*.sh
CMD ["/run.sh"]
