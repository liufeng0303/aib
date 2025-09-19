--
-- 核心系统：贷款合同表
--
drop   table cb_contract_loan;
create table cb_contract_loan (
 id            varchar(999) not null
,name          varchar(999) not null
,customer      varchar(999) not null
,project       varchar(999) not null
,pay_date      varchar(999) not null
,close_date    varchar(999) not null
,bal_principal varchar(999) not null
,bal_remain    varchar(999) not null
,int_received  varchar(999) not null
,int_accrued   varchar(999) not null
,status        varchar(999) not null
,bal_debt      varchar(999) not null
,int_debt      varchar(999) not null
,int_punish    varchar(999) not null
,int_compound  varchar(999) not null
);
create unique index cb_contract_loan_pk on cb_contract_loan( id );

comment on table  cb_contract_loan               is '贷款合同表';
comment on column cb_contract_loan.id            is '合同编号';
comment on column cb_contract_loan.name          is '合同名称';
comment on column cb_contract_loan.customer      is '客户号';
comment on column cb_contract_loan.project       is '项目代号';
comment on column cb_contract_loan.pay_date      is '放款日期';
comment on column cb_contract_loan.close_date    is '关闭日期';
comment on column cb_contract_loan.bal_principal is '贷款本金';
comment on column cb_contract_loan.bal_remain    is '剩余本金';
comment on column cb_contract_loan.int_received  is '已收利息';
comment on column cb_contract_loan.int_accrued   is '计提利息';
comment on column cb_contract_loan.status        is '贷款状态: 0-正常，1-表内逾期，2-表外逾期，9-全部收回';
comment on column cb_contract_loan.bal_debt      is '拖欠本金金额';
comment on column cb_contract_loan.int_debt      is '拖欠利息金额';
comment on column cb_contract_loan.int_punish    is '拖欠罚息金额';
comment on column cb_contract_loan.int_compound  is '拖欠复利金额';

