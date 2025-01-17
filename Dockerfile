FROM wordpress:latest

COPY replace-files-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/replace-files-entrypoint.sh

ENTRYPOINT ["replace-files-entrypoint.sh"]

CMD ["apache2-foreground"]