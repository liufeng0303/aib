--
-- 贷款借据
--
drop   table as_loan_receiption;
create table as_loan_receiption (
 stt_date      varchar(8)    not null
,end_date      varchar(8)    not null
,id            varchar(16)   not null
,name          varchar(256)  not null
,contract      varchar(16)   not null
,pay_date      varchar(8)    not null
,close_date    varchar(8)    not null

,bal_principal numeric(21,2) not null
,bal_remain    numeric(21,2) not null
,int_received  numeric(21,2) not null
,int_accrued   numeric(21,2) not null

,status        varchar(1)    not null
,bal_debt      numeric(21,2) not null
,int_debt      numeric(21,2) not null
,int_punish    numeric(21,2) not null
,int_compound  numeric(21,2) not null

);
create unique index as_loan_receiption_pk on as_loan_receiption( stt_date, end_date, id );

comment on table  as_loan_receiption               is '贷款合同借据';
comment on column as_loan_receiption.stt_date      is '开始日期';
comment on column as_loan_receiption.end_date      is '结束日期';
comment on column as_loan_receiption.id            is '代号';
comment on column as_loan_receiption.name          is '名称';
comment on column as_loan_receiption.contract      is '合同代号';
comment on column as_loan_receiption.pay_date      is '放款日期';
comment on column as_loan_receiption.close_date    is '关闭日期';

comment on column as_loan_receiption.bal_principal is '放款本金';
comment on column as_loan_receiption.bal_remain    is '剩余本金';
comment on column as_loan_receiption.int_received  is '已收利息';
comment on column as_loan_receiption.int_accrued   is '计提利息';

comment on column as_loan_receiption.status        is '贷款状态: 0-正常，1-表内逾期，2-表外逾期，9-全部收回';
comment on column as_loan_receiption.bal_debt      is '拖欠本金金额';
comment on column as_loan_receiption.int_debt      is '拖欠利息金额';
comment on column as_loan_receiption.int_punish    is '拖欠罚息金额';
comment on column as_loan_receiption.int_compound  is '拖欠复利金额';

insert into as_loan_receiption values ('20230101','29991231','REC-1101','北京城投租赁合同20231010借据','CTR-1101','20231010','29991231',1000,1000,0,20,'0',0,0,0,0);

