--
-- 项目
--
drop   table ag_project_purpose;
create table ag_project_purpose (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,sno      bigint       not null
);
create unique index ag_project_purpose_pk on ag_project_purpose( stt_date, end_date, id );

comment on table  ag_project_purpose          is 'contract purpose';
comment on column ag_project_purpose.stt_date is 'start date';
comment on column ag_project_purpose.end_date is 'end date';
comment on column ag_project_purpose.id       is 'id';
comment on column ag_project_purpose.name     is 'name';
comment on column ag_project_purpose.sno      is 'sort number';

insert into ag_project_purpose values ( '20230101','29991231', '1', '房屋',1);
insert into ag_project_purpose values ( '20230101','29991231', '2', '设备',2);

