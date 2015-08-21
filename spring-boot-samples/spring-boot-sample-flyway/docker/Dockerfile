#  docker build -t="parkerneff/postgres-boot" .
#  docker run --name boot-postgres  -d -p 5432:5432  parkerneff/postgres-boot
#
FROM postgres

MAINTAINER pneff@unicon.net>

COPY initdb.sh /docker-entrypoint-initdb.d/
RUN chmod u=rwx,g=rx,o=x /docker-entrypoint-initdb.d/initdb.sh
COPY zBootSchema.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/var/log/postgresql", "/var/lib/postgresql"]

ENV POSTGRES_PASSWORD=mypassword

# Set the default command to run when starting the container
CMD ["postgres", "-D", "/var/lib/postgresql/data", "-c", "config_file=/var/lib/postgresql/data/postgresql.conf"]