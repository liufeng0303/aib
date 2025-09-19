#!/bin/sh
################################################################################
exit

# 1. 系统服务
systemctl list-units --type=service | grep postgres  # 显示已经配置的服务
systemctl enable  postgresql-16
systemctl disable postgresql-16
systemctl start   postgresql-16
systemctl stop    postgresql-16
systemctl restart postgresql-16
systemctl reload  postgresql-16
# 关闭防火墙
systemctl stop    firewalld
systemctl disable firewalld

# 2. 系统应用 yum->dnf apt
dnf update -y
dnf list installed | grep postgres
dnf -qy module disable postgresql
dnf remove postgresql16-server
dnf info   postgresql16-server
dnf info   postgresql16-contrib
dnf search postgresql
dnf repolist    # 显示源地址
dnf makecache   # 更新缓存
ls -l /etc/yum.repos.d/

# 3. tcp端口, IP, cpu, mem, io, 进程
netstat -an | grep 5432
ip addr
top
vmstat 1
iostat 1
ps -a
grep postgres /etc/passwd    # 操作系统的口令文件中是否有postgres用户

# 4. 创建普通用户
export ACCT_PWD=aib
export ACCT_NAME=aib
useradd -m $ACCT_NAME
echo $ACCT_PWD|passwd --stdin $ACCT_NAME > /dev/null 2>&1

cat /etc/passwd
cat /etc/shadow
cat /etc/group



# 配置vi颜色: 编辑$HOME  ~/.vimrc, /root/.vimrc
# 设置hostname
hostnamectl hostname H066 --static

