
create view v_v_cb_customer as

select
	cus_type
	,cus_type_name
	,cus_id
	,cus_name
	,cer_type_id_src
	,cer_type_id_std
	,cer_type_name
	,cer_no
	,reg_id_src
	,reg_id_std
	,reg_name
	,ind_id_src
	,ind_id_std
	,ind_name
from v_cb_customer_ent

union

select
	cus_type
	,cus_type_name
	,cus_id
	,cus_name
	,cer_type_id_src
	,cer_type_id_std
	,cer_type_name
	,cer_no
	,reg_id_src
	,reg_id_std
	,reg_name
	,ind_id_src
	,ind_id_std
	,ind_name
from v_cb_customer_per
;

