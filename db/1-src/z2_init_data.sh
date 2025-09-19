
echo "delete from code_mapping;" | db src

echo "COPY ip_certification_type TO '/tmp/ip_certification_type.csv' WITH DELIMITER '|';" | db dws
awk -F'|' '{ printf "%s|%s|CB|核心系统|certification_type|证件种类|%s|%s|%s|%d|0\n",$1,$2, $4,$3,$3,$6}'  /tmp/ip_certification_type.csv > /tmp/ip_certification_type_code_mapping.csv
echo "COPY code_mapping FROM '/tmp/ip_certification_type_code_mapping.csv' WITH DELIMITER '|';" | db src


echo "COPY pb_industry TO '/tmp/pb_industry.csv' WITH DELIMITER '|';" | db dws
awk -F'|' '{ printf "%s|%s|CB|核心系统|industry|行业|%s|%s|%s|%d|0\n",$1,$2, $4,$3,$3,$7}'  /tmp/pb_industry.csv > /tmp/pb_industry_code_mapping.csv
echo "COPY code_mapping FROM '/tmp/pb_industry_code_mapping.csv' WITH DELIMITER '|';" | db src


echo "COPY pb_region TO '/tmp/pb_region.csv' WITH DELIMITER '|';" | db dws
awk -F'|' '{ printf "%s|%s|CB|核心系统|region|区域|%s|%s|%s|%d|0\n",$1,$2, $4,$3,$3,$7}'  /tmp/pb_region.csv > /tmp/pb_region_code_mapping.csv
echo "COPY code_mapping FROM '/tmp/pb_region_code_mapping.csv' WITH DELIMITER '|';" | db src


echo "20230101|29991231|CB|核心系统|customer_sex|客户性别|男性|male|nan|1|0"   >  /tmp/code_mapping_customer_sex.csv
echo "20230101|29991231|CB|核心系统|customer_sex|客户性别|女性|female|nu|2|0"  >> /tmp/code_mapping_customer_sex.csv
echo "20230101|29991231|CB|核心系统|customer_sex|客户性别|其它|other|qt|3|0"   >> /tmp/code_mapping_customer_sex.csv
echo "COPY code_mapping FROM '/tmp/code_mapping_customer_sex.csv' WITH DELIMITER '|';" | db src

echo "select * from code_mapping order by class_id, cd_sno;" | db src


################################################################################
#exit
################################################################################

echo "delete from cb_customer_ent;" | db src
echo "delete from cb_customer_per;" | db src

echo "COPY (select * from ip_customer where end_date='29991231') TO '/tmp/ip_customer.csv' WITH DELIMITER '|';" | db dws

awk -F'|' '{ printf "%s|%s|%s|%s|%s|%s\n",$4,$5,$6,$7,$8,$9}'      /tmp/ip_customer.csv > /tmp/cb_customer_ent.csv
awk -F'|' '{ printf "%s|%s|%s|%s|nan|%s|%s\n",$4,$5,$6,$7,$8,$9}'  /tmp/ip_customer.csv > /tmp/cb_customer_per.csv

echo "COPY cb_customer_ent FROM '/tmp/cb_customer_ent.csv' WITH DELIMITER '|';" | db src
echo "COPY cb_customer_per FROM '/tmp/cb_customer_per.csv' WITH DELIMITER '|';" | db src


echo "delete from cb_customer_ent where cer_type like '1%';" | db src
echo "delete from cb_customer_per where cer_type like '2%';" | db src


echo "update cb_customer_per set sex='nu' where id like 'PER-12%';" | db src
echo "update cb_customer_per set sex='qt' where id like 'PER-32%';" | db src

echo "select * from cb_customer_ent order by id;" | db src
echo "select * from cb_customer_per order by id;" | db src

################################################################################


