#!/bin/sh

clear

#
# drop view
#
for i in `ls -r v_*.sql`
do
	f=`echo $i | sed "s/\.sql//g"`
	echo "drop view $f;"  | dbdws
	echo -e "$f\n"
done
	echo -e "\npress <Enter> to continue ... \c"
	read an

#
# drop & create tables
# create views 
#
for i in `ls *.sql`
do
	echo;echo;echo
	echo -e "EXEC SQL FILE: $i\n"
	# echo -e "press <Enter> to continue ... \c"
	# read an
	sleep 1
	cat $i | dbdws
done

