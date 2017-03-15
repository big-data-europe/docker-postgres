#################################
# Postgres Docker for SC7-Pilot #
# BigDataEurope, Horizon2020    #
# 				#
# debian:jessie			#
# postgres:9.4			#
#################################
 
FROM debian:jessie

MAINTAINER Giorgos Argyriou <gioargyr@di.uoa.gr>

# Install packages.
RUN apt-get update && apt-get install -y \
    postgresql-9.4 \
    postgresql-server-dev-9.4 \
    curl \
 && apt-get clean  && rm -rf /var/lib/apt/lists/*

ADD initdb check_postgres_data enable_remote /usr/local/bin/
ADD testDump.sql /testDump.sql
RUN chmod -v +x /usr/local/bin/initdb
RUN chown -v postgres:postgres /usr/local/bin/initdb
RUN chmod -v +x /usr/local/bin/enable_remote
RUN chmod -v +x /usr/local/bin/check_postgres_data

USER postgres

#start postgres, create db, load dump
RUN initdb

USER root

#Keep data directory in a tmp directory. Upon docker run files will be moved to original data directory by check_postgres_data script. 
#This enables mounting a host directory to postgres data directory
RUN mv /var/lib/postgresql/9.4/main /var/lib/postgresql/9.4/main_tmp

#postgres port
EXPOSE 5432

CMD enable_remote && check_postgres_data && su - postgres -c "/usr/lib/postgresql/9.4/bin/postgres -D /var/lib/postgresql/9.4/main -c config_file=/etc/postgresql/9.4/main/postgresql.conf"

