#!/bin/sh
################################################################################
exit

# 修改 profile
grep -v PGHOST .bash_profile > tmp$$-1
grep -v PGPORT     tmp$$-1 > tmp$$-2
grep -v PGDATABASE tmp$$-2 > tmp$$-3
grep -v PGUSER     tmp$$-3 > tmp$$-4
grep -v PGPASSWORD tmp$$-4 > tmp$$-5
cp tmp$$-5 .bash_profile
rm -f tmp$$*

cat << END >> .bash_profile
export PGHOST=192.168.30.66
export PGPORT=5432
export PGUSER=usr_bank
export PGPASSWORD=pwd_bank
END

# 查看环境变量
set | grep PG

# 创建目录
mkdir $HOME/bin $HOME/etc $HOME/tmp
[ -d $HOME/prj/src_data ] || mkdir -p $HOME/prj/src_data
mkdir -p $HOME/prj/db
mkdir -p $HOME/prj/job

# 创建数据库快捷访问命令
#echo "psql db_ods" > $HOME/bin/dbods
#echo "psql db_dws" > $HOME/bin/dbdws
#echo "psql db_dms" > $HOME/bin/dbdms
chmod +x $HOME/bin/db*



