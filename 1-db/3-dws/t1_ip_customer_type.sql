--
-- 客户种类
--
drop   table ip_customer_type;
create table ip_customer_type (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,sno      bigint       not null
);
create unique index ip_customer_type_pk on ip_customer_type( stt_date, end_date, id );

comment on table  ip_customer_type          is 'customer type defination';
comment on column ip_customer_type.stt_date is 'start date';
comment on column ip_customer_type.end_date is 'end state';
comment on column ip_customer_type.id       is 'id';
comment on column ip_customer_type.name     is 'name';
comment on column ip_customer_type.sno      is 'sort number';

insert into ip_customer_type values ( '20230101','29991231', '1', '个人', 1 );
insert into ip_customer_type values ( '20230101','29991231', '2', '企业', 2 );
insert into ip_customer_type values ( '20230101','29991231', '3', '同业', 3 );
insert into ip_customer_type values ( '20230101','29991231', '9', '未知', 9 );

