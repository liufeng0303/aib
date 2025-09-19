--
-- 码值映射表
--
drop   table code_mapping;
create table code_mapping (
 stt_date    char(8)     not null
,end_date    char(8)     not null
,src_id      char(2)     not null
,src_name    char(8)     not null
,class_id    varchar(96) not null
,class_name  varchar(96) not null
,cd_key      varchar(96) not null
,cd_val_std  varchar(96) not null
,cd_val_src  varchar(96) not null
,cd_sno      bigint      not null
,status      char(1)     not null
);
create unique index code_mapping_pk on code_mapping( stt_date,end_date,src_id,class_id,cd_sno );

comment on table  code_mapping             is '码值映射表';
comment on column code_mapping.stt_date    is '开始日期';
comment on column code_mapping.end_date    is '结束日期';
comment on column code_mapping.src_id      is '源系统代码';
comment on column code_mapping.src_name    is '源系统名称';
comment on column code_mapping.class_id    is '类别代码';
comment on column code_mapping.class_name  is '类别名称';
comment on column code_mapping.cd_key      is '码值名称';
comment on column code_mapping.cd_val_std  is '标准码值';
comment on column code_mapping.cd_val_src  is '源系统码值';
comment on column code_mapping.cd_sno      is '码值序号';
comment on column code_mapping.status      is '状态：0-正常，1-失效';

