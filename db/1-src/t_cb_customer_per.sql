--
-- 核心系统：个人客户信息表
--
drop   table cb_customer_per;
create table cb_customer_per (
 id            varchar(999) not null
,name          varchar(999) not null
,cer_type      varchar(999) not null
,cer_no        varchar(999) not null
,sex           varchar(999) not null
,region        varchar(999) not null
,industry      varchar(999) not null
);
create unique index cb_customer_per_pk on cb_customer_per( id );

comment on table  cb_customer_per          is '个人客户信息表';
comment on column cb_customer_per.id       is '客户号';
comment on column cb_customer_per.name     is '客户名称';
comment on column cb_customer_per.cer_type is '证件类型';
comment on column cb_customer_per.cer_no   is '证件号码';
comment on column cb_customer_per.sex      is '性别';
comment on column cb_customer_per.region   is '区域';
comment on column cb_customer_per.industry is '行业';


