--
-- 客户
--
create view v_ip_customer as
select 
	 customer.stt_date as stt_date
	,customer.end_date as end_date
	,customer.cus_type as cus_type_id
	,cus_type.name     as cus_type_name
	,customer.id       as cus_id
	,customer.name     as cus_name
	,customer.cer_type as cer_type_id
	,cer_type.name     as cer_type_name
	,customer.cer_no   as cer_no
	,customer.region   as reg_id
	,loregion.name     as reg_name
	,customer.industry as ind_id
	,industry.name     as ind_name
	,customer.cmt      as cus_cmt
from
	          ip_customer           customer
	left join ip_customer_type      cus_type on customer.cus_type = cus_type.id and cus_type.end_date = '29991231'
	left join ip_certification_type cer_type on customer.cer_type = cer_type.id and cer_type.end_date = '29991231'
	left join pb_region             loregion on customer.region   = loregion.id and loregion.end_date = '29991231'
	left join pb_industry           industry on customer.industry = industry.id and industry.end_date = '29991231'
where
	customer.end_date = '29991231'
;

