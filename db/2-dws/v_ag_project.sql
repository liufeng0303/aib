--
-- 项目
--
create view v_ag_project as
select 
	 prj.stt_date   as stt_date
	,prj.end_date   as end_date
	,prj.id         as prj_id
	,prj.name       as prj_name
	,prj.product    as prd_id
	,prd.name       as prd_name
	,prj.purpose    as pps_id
	,pps.name       as pps_name
	,prj.customer   as cus_id
	,cus.name       as cus_name
	,prj.manager    as mng_id
	,stf.name       as mng_name
	,prj.status     as prj_status
from
	          ag_project prj
	left join pd_product          prd on prj.product  = prd.id and prd.end_date = '29991231'
	left join ag_project_purpose  pps on prj.purpose  = pps.id and pps.end_date = '29991231'
	left join ip_customer         cus on prj.customer = cus.id and cus.end_date = '29991231'
	left join ip_staff            stf on prj.manager  = stf.id and stf.end_date = '29991231'
where
	prj.end_date = '29991231'
;

