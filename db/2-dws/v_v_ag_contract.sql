--
-- 合同
--
create view v_v_ag_contract as
select 
	 con.stt_date      as stt_date
	,con.end_date      as end_date
	,con.id            as con_id
	,con.name          as con_name
	,con.customer      as cus_id
	,cus.name          as cus_name
	,con.project       as prj_id
	,prj.prj_name      as prj_name
	,prj.prd_id        as prd_id
	,prj.prd_name      as prd_name
	,prj.pps_id        as pps_id
	,prj.pps_name      as pps_name
	,prj.cus_id        as cus_id_prj
	,prj.cus_name      as cus_name_prj
	,prj.mng_id        as mng_id
	,prj.mng_name      as mng_name
	,prj.prj_status    as prj_status
from
	          ag_contract  con
	left join ip_customer  cus on con.customer = cus.id     and cus.end_date = '29991231'
	left join v_ag_project prj on con.project  = prj.prj_id and prj.end_date = '29991231'
where
	con.end_date = '29991231'
;

