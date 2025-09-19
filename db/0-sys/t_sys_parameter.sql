
drop   table sys_parameter;
create table sys_parameter (
 id       char(4)     not null
,name     char(99)    not null
,pval     varchar(99) not null
,type     char(2)     not null
,type_cmt varchar(99) not null
,sno      int         not null
);
create unique index sys_parameter_pk on sys_parameter (id );

comment on table  sys_parameter           is '系统运行参数表';
comment on column sys_parameter.id        is '编码';
comment on column sys_parameter.name      is '名称';
comment on column sys_parameter.pval      is '参数值';
comment on column sys_parameter.type      is '类型';
comment on column sys_parameter.type_cmt  is '类型注释';
comment on column sys_parameter.sno       is 'sort number';

insert into sys_parameter values ( '0000', '前一工作日期', '20231029', '00', '工作日期参数', 10000 );
insert into sys_parameter values ( '0001', '当前工作日期', '20231030', '00', '工作日期参数', 10001 );
insert into sys_parameter values ( '0002', '下一工作日期', '20231031', '00', '工作日期参数', 10002 );

