


psql -U postgres -W -h 192.168.30.66 -d postgres << END
-- drop db
drop DATABASE db_sys;
drop DATABASE db_src;
drop DATABASE db_ods;
drop DATABASE db_dws;
drop DATABASE db_dms;
drop DATABASE db_app;
drop DATABASE db_rpt;
-- drop user
drop USER usr_bank;
-- create user & grant
CREATE USER usr_bank WITH PASSWORD 'pwd_bank' CREATEDB;
grant pg_write_server_files to usr_bank;
grant pg_read_server_files  to usr_bank;
-- create db
CREATE DATABASE db_sys OWNER usr_bank;
CREATE DATABASE db_src OWNER usr_bank;
CREATE DATABASE db_ods OWNER usr_bank;
CREATE DATABASE db_dws OWNER usr_bank;
CREATE DATABASE db_dms OWNER usr_bank;
CREATE DATABASE db_app OWNER usr_bank;
CREATE DATABASE db_rpt OWNER usr_bank;
END

