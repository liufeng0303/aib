#!/bin/bash

[ "$3" == "" ] && {
	echo -e "\nusage: $0 [WORK_DATE(format:YYYYMMDD)] [system_short_name] [TABLE_NAME]\n"
	exit 1
}

echo "truncate $2_$3;\\copy $2_$3 from '$SRC_DATA_DIR/$1/$2/$3.dat' delimiter '|';" | db ods

exit 0

