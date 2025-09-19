
echo "\copy ip_customer to 'customer_ent.dat' with delimiter '|';" | db dws
awk -F '|' '{printf "%s|%s|%s|%s|%s|%s|\n", $4,$5,$6,$7,$8,$9}' customer_ent.dat |sort > tmp$$
mv tmp$$ customer_ent.dat
sed -i "s/ //g" customer_ent.dat

