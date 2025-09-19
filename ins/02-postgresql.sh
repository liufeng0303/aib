#!/bin/sh
################################################################################
exit

# 1. 查看数据库信息: 用户列表、数据库列表、数据表列表、数据库进程
echo "\du" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "\l"  | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "\d"  | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "SELECT * FROM pg_stat_activity where datname !='';" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "SELECT datid,datname,pid,application_name,client_addr,state,backend_type  \
	,backend_start,xact_start, query_start   \
	FROM pg_stat_activity where datname !='';" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "SELECT datid,datname,pid,query FROM pg_stat_activity where datid ='16508';" | psql -U postgres -W -h 192.168.30.66 -d postgres

################################################################################

# 2.1. 安装：添加官方仓库
dnf repolist
dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-9-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# 2.2. 安装：pgsql-16
dnf install -y postgresql16-server postgresql16-contrib

# 2.3. 安装：修改配置文件, 侦听全部tcp端口，允许本机unix访问，允许指定网段主机访问
#      修改：listen_addresses = '*'
#      保留：local all all peer   
#      增加：host all all 192.168.0.0/16 md5
vi /var/lib/pgsql/16/data/postgresql.conf
vi /var/lib/pgsql/16/data/pg_hba.conf

# 2.4. 安装：启动服务 systemctl start and enable

# 2.5. 安装：初始化数据库
/usr/pgsql-16/bin/postgresql-16-setup initdb

# 2.6. 安装：进入数据库用户修改DBA口令
su - postgres
echo "alter user postgres with password '123456';" | psql
exit

# 2.7. 安装：创建数据库和用户，需要输入上面设定的密码
psql -U postgres -W -h 192.168.30.66 -d postgres << END
CREATE USER usr_bank WITH PASSWORD 'pwd_bank' CREATEDB;
CREATE DATABASE db_sys OWNER usr_bank;
CREATE DATABASE db_src OWNER usr_bank;
CREATE DATABASE db_ods OWNER usr_bank;
CREATE DATABASE db_dws OWNER usr_bank;
CREATE DATABASE db_dms OWNER usr_bank;
CREATE DATABASE db_app OWNER usr_bank;
CREATE DATABASE db_rpt OWNER usr_bank;
grant pg_write_server_files to usr_bank;
grant pg_read_server_files  to usr_bank;
END

psql -U postgres -W -h 192.168.30.66 -d postgres << END
drop DATABASE db_sys;
drop DATABASE db_src;
drop DATABASE db_ods;
drop DATABASE db_dws;
drop DATABASE db_dms;
drop DATABASE db_app;
drop DATABASE db_rpt;
drop USER usr_bank;
END

echo "CREATE USER usr_bank WITH PASSWORD 'pwd_bank' CREATEDB;" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "CREATE DATABASE db_sys OWNER usr_bank;"   | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "CREATE DATABASE db_ods OWNER usr_bank;"   | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "CREATE DATABASE db_dws OWNER usr_bank;"   | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "CREATE DATABASE db_dms OWNER usr_bank;"   | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "CREATE DATABASE db_app OWNER usr_bank;"   | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "grant pg_write_server_files to usr_bank;" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "grant pg_read_server_files  to usr_bank;" | psql -U postgres -W -h 192.168.30.66 -d postgres

echo "drop DATABASE db_sys;" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "drop DATABASE db_ods;" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "drop DATABASE db_dws;" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "drop DATABASE db_dms;" | psql -U postgres -W -h 192.168.30.66 -d postgres
echo "drop USER usr_bank;"   | psql -U postgres -W -h 192.168.30.66 -d postgres

# 3. 使用数据库
psql -U usr_bank -W -h 192.168.30.66 -d db_ods
psql -U usr_bank -W -h 192.168.30.66 -d db_dws
psql -U usr_bank -W -h 192.168.30.66 -d db_dms

