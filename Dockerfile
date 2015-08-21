FROM postgres:9.4
ADD createdb.sql /docker-entrypoint-initdb.d/
ADD initdb.sql /tmp/
ADD createuser.sql /tmp/
