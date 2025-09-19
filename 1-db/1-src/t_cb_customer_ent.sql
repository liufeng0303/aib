--
-- 核心系统：企业客户信息表
--
drop   table cb_customer_ent;
create table cb_customer_ent (
 id       varchar(999) not null
,name     varchar(999) not null
,cer_type varchar(999) not null
,cer_no   varchar(999) not null
,region   varchar(999) not null
,industry varchar(999) not null
);
create unique index cb_customer_ent_pk on cb_customer_ent( id );

comment on table  cb_customer_ent          is '企业客户信息表';
comment on column cb_customer_ent.id       is '客户号';
comment on column cb_customer_ent.name     is '客户名称';
comment on column cb_customer_ent.cer_type is '证件种类';
comment on column cb_customer_ent.cer_no   is '证件号';
comment on column cb_customer_ent.region   is '区域';
comment on column cb_customer_ent.industry is '行业';

