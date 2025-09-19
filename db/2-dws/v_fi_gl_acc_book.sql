--
-- 总账账户
--
create view v_fi_gl_acc_book as
select 
	 abk.stt_date     as stt_date
	,abk.end_date     as end_date
	,abk.acc_book     as acc_book
	,abk.orgnization  as org_id
	,org.name         as org_name
	,abk.department   as dep_id
	,dep.name         as dep_name
	,abk.currency     as ccy_id
	,ccy.name         as ccy_name
	,abk.account      as acc_id
	,abk.bizline      as biz_id
	,biz.name         as biz_name
	,abk.product      as prd_id
	,prd.name         as prd_name
	,abk.acc_attr     as acc_attr
	,abk.deb_cre_flg  as deb_cre_flg
	,abk.bal_dr       as bal_dr
	,abk.bal_cr       as bal_cr
	,abk.bgn_bal_dr_Y as bgn_bal_dr_Y
	,abk.bgn_bal_cr_Y as bgn_bal_cr_Y
	,abk.bgn_bal_dr_M as bgn_bal_dr_M
	,abk.bgn_bal_cr_M as bgn_bal_cr_M
from
	          fi_gl_acc_book   abk
	left join ip_orgnization   org on abk.orgnization = org.id  and org.end_date = '29991231'
	left join ip_orgnization   dep on abk.department  = dep.id  and dep.end_date = '29991231'
	left join ip_bizline       biz on abk.bizline     = biz.id  and biz.end_date = '29991231'
	left join pd_product       prd on abk.product     = prd.id  and prd.end_date = '29991231'
	left join pb_currency      ccy on abk.currency    = ccy.id  and ccy.end_date = '29991231'
where
	abk.end_date = '29991231'
;

