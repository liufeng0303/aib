--
-- 核心系统：个人客户信息表
--
create view v_cb_customer_per as
select 
	 '1'             as cus_type
	,'个人'          as cus_type_name
	,cus.id          as cus_id
	,cus.name        as cus_name

	,cus.cer_type    as cer_type_id_src
	,ctp.cd_val_std  as cer_type_id_std
	,ctp.cd_key      as cer_type_name
	,cus.cer_no      as cer_no

	,cus.sex         as sex_src
	,sex.cd_val_std  as sex_std

	,cus.region      as reg_id_src
	,reg.cd_val_std  as reg_id_std
	,reg.cd_key      as reg_name

	,cus.industry    as ind_id_src
	,ind.cd_val_std  as ind_id_std
	,ind.cd_key      as ind_name

from
	cb_customer_per cus
	left join code_mapping ctp on ctp.status='0' and ctp.src_id='CB' and ctp.class_id='certification_type' and cus.cer_type=ctp.cd_val_src
	left join code_mapping sex on sex.status='0' and sex.src_id='CB' and sex.class_id='customer_sex'       and cus.sex     =sex.cd_val_src
	left join code_mapping reg on reg.status='0' and reg.src_id='CB' and reg.class_id='region'             and cus.region  =reg.cd_val_src
	left join code_mapping ind on ind.status='0' and ind.src_id='CB' and ind.class_id='industry'           and cus.industry=ind.cd_val_src
;

