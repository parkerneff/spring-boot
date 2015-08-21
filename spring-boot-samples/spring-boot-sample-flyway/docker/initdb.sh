#!/bin/bash

# Adjust PostgreSQL configuration so that remote connections to the database are possible.
echo Modifying pg_hba.conf
echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf

# And add ``listen_addresses``
echo Modifying postgresql.conf
echo "listen_addresses='*'" >>    /var/lib/postgresql/data/postgresql.conf
echo "bytea_output = 'escape'" >> /var/lib/postgresql/data/postgresql.conf