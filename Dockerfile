FROM wordpress:fpm-alpine

COPY docker-entrypoint.sh /usr/local/bin/

RUN curl -o sqlite-plugin.zip https://downloads.wordpress.org/plugin/sqlite-integration.1.8.1.zip && \
    unzip sqlite-plugin.zip -d /usr/src/wordpress/wp-content/plugins/ && \
    cp /usr/src/wordpress/wp-content/plugins/sqlite-integration/db.php /usr/src/wordpress/wp-content && \
    chmod +x /usr/local/bin/docker-entrypoint.sh && \
    rm -rf sqlite-plugin.zip