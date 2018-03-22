FROM mysql
ENV MYSQL_ROOT_PASSWORD=topsecret
ENV MYSQL_DATABASE=syg
COPY ./my.cnf /etc/mysql/my.conf
COPY ./dumps/BDD.sql /tmp/
COPY ./mysql_entrypoint.sh ./
RUN chown mysql:mysql /etc/mysql/my.cnf
RUN chmod 600 /etc/mysql/my.cnf
