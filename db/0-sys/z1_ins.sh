#!/bin/sh
################################################################################

. ./zdbenv.sh

################################################################################
clear

#
# 1.1. drop functions
#
ls func_*.sql > /dev/null 2>&1
[ "$?" = "0" ] &&
{
	echo -e "\n\n\n===>dorp functions<==="
	for i in `ls func_*.sql`
	do
		j=`echo $i | sed "s/func_//g" | sed "s/\.sql//g"`
		echo -e "\n===>\c"
		echo -e "drop function $j();"
		echo -e "drop function $j();" | psql
		sleep 1
	done
	echo -e "\n===> press <Enter> to continue ... \c"
	read an

}

#
# 1.2. drop views
#
ls v_*.sql > /dev/null 2>&1
[ "$?" = "0" ] &&
{
	echo -e "\n\n\n===>dorp views <==="
	for i in `ls -r v_*.sql`
	do
		j=`echo $i | sed "s/\.sql//g"`
		echo -e "\n===>\c"
		echo -e "drop view $j;"
		echo -e "drop view $j;" | psql
		sleep 1
	done
	echo -e "\npress <Enter> to continue ... \c"
	read an
}

#
# 2.1. drop & create tables
#
ls t*.sql > /dev/null 2>&1
[ "$?" = "0" ] &&
{
	echo -e "\n\n\n===>dorp & create tables <==="
	for i in `ls t*.sql`
	do
		echo -e "\n===>\c"
		echo -e "EXEC SQL FILE: $i"
		cat $i | psql
		sleep 1
	done
	echo -e "\n===> press <Enter> to continue ... \c"
	read an
}

#
# 2.2. create views 
#
ls v_*.sql > /dev/null 2>&1
[ "$?" = "0" ] &&
{
	echo -e "\n\n\n===> create views <==="
	echo -e "\n\n\n"
	for i in `ls v_*.sql`
	do
		echo -e "\n===>\c"
		echo -e "EXEC SQL FILE: $i"
		cat $i | psql
		sleep 1
	done
	echo -e "\n===> press <Enter> to continue ... \c"
	read an
}

#
# 2.3. create functions
#
ls func_*.sql > /dev/null 2>&1
[ "$?" = "0" ] &&
{
	echo -e "\n\n\n===> create functions <==="
	for i in `ls func_*.sql`
	do
		echo -e "\n===>\c"
		echo -e "EXEC SQL FILE: $i"
		cat $i | psql
		sleep 1
	done

}
echo -e "\n\n=====> E N D ! <=====\n\n\n"

