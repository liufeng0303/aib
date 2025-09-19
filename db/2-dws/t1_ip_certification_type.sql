--
-- 证件种类
--
drop   table ip_certification_type;
create table ip_certification_type (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,cus_type varchar(16)  not null
,sno      bigint       not null
);
create unique index ip_certification_type_pk on ip_certification_type( stt_date, end_date, id );

comment on table  ip_certification_type          is 'certification type defination';
comment on column ip_certification_type.stt_date is 'start date';
comment on column ip_certification_type.end_date is 'end date';
comment on column ip_certification_type.id       is 'id';
comment on column ip_certification_type.name     is 'name';
comment on column ip_certification_type.cus_type is '客户类型：customer type id: 1_person, 2_enterprise';
comment on column ip_certification_type.sno      is 'sort number';

insert into ip_certification_type values ( '20230101','29991231', '101', '身份证',           '1', 101 );
insert into ip_certification_type values ( '20230101','29991231', '102', '户口本',           '1', 102 );
insert into ip_certification_type values ( '20230101','29991231', '103', '护照',             '1', 103 );
insert into ip_certification_type values ( '20230101','29991231', '104', '军人证',           '1', 104 );
insert into ip_certification_type values ( '20230101','29991231', '199', '未知个人证件类别', '1', 199 );

insert into ip_certification_type values ( '20230101','29991231', '201', '统一社会信用代码', '2', 201 );
insert into ip_certification_type values ( '20230101','29991231', '202', '工商营业执照',     '2', 202 );
insert into ip_certification_type values ( '20230101','29991231', '203', '税务登记证',       '2', 203 );
insert into ip_certification_type values ( '20230101','29991231', '299', '未知企业证件类别', '2', 299 );

