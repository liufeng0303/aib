--
-- 项目
--
drop   table ag_project;
create table ag_project (
 stt_date   varchar(8)   not null
,end_date   varchar(8)   not null
,id         varchar(16)  not null
,name       varchar(256) not null
,product    varchar(16)  not null
,purpose    varchar(16)  not null
,customer   varchar(16)  not null
,manager    varchar(16)  not null
,status     varchar(16)  not null
);
create unique index ag_project_pk on ag_project( stt_date, end_date, id );

comment on table  ag_project            is 'lease project';
comment on column ag_project.stt_date   is 'start date';
comment on column ag_project.end_date   is 'end date';
comment on column ag_project.id         is 'id';
comment on column ag_project.name       is 'name';
comment on column ag_project.product    is '产品：product_id， 直租、回租、经营租等';
comment on column ag_project.purpose    is '项目用途：project_purpose_id，设备、房屋等';
comment on column ag_project.customer   is '客户号：customer id';
comment on column ag_project.manager    is '客户经理：manager id';
comment on column ag_project.status     is '状态：0-normal, 1-closed';

insert into ag_project values ('20231010','29991231','PRJ-1101','北京城投租赁项目20231010','1-2-01-01','1','ENT-1101','STF-1101','0');
insert into ag_project values ('20231011','29991231','PRJ-1102','北京城投租赁项目20231011','1-2-01-01','2','ENT-1101','STF-1101','0');

insert into ag_project values ('20231011','29991231','PRJ-1201','天津城投租赁项目20231010','1-2-01-01','1','ENT-1201','STF-1201','0');
insert into ag_project values ('20231011','29991231','PRJ-1202','天津城投租赁项目20231011','1-2-01-01','1','ENT-1201','STF-1201','0');

insert into ag_project values ('20231010','29991231','PRJ-3101','上海城投租赁项目20231010','1-2-01-01','1','ENT-3101','STF-3101','0');
insert into ag_project values ('20231011','29991231','PRJ-3102','上海城投租赁项目20231011','1-2-01-01','1','ENT-3101','STF-3101','0');

insert into ag_project values ('20231010','29991231','PRJ-3211','南京城投租赁项目20231010','1-2-01-01','1','ENT-3211','STF-3211','0');
insert into ag_project values ('20231011','29991231','PRJ-3212','南京城投租赁项目20231011','1-2-01-01','1','ENT-3211','STF-3211','0');
insert into ag_project values ('20231010','29991231','PRJ-3213','南京高速租赁项目20231010','1-2-01-01','1','ENT-3212','STF-3212','0');
insert into ag_project values ('20231011','29991231','PRJ-3214','南京高速租赁项目20231011','1-2-01-01','1','ENT-3212','STF-3212','0');

insert into ag_project values ('20231010','29991231','PRJ-3221','苏州城投租赁项目20231010','1-2-01-01','1','ENT-3221','STF-3221','0');
insert into ag_project values ('20231011','29991231','PRJ-3222','苏州城投租赁项目20231011','1-2-01-01','1','ENT-3221','STF-3221','0');
insert into ag_project values ('20231010','29991231','PRJ-3223','苏州高速租赁项目20231010','1-2-01-01','1','ENT-3222','STF-3222','0');
insert into ag_project values ('20231011','29991231','PRJ-3224','苏州高速租赁项目20231011','1-2-01-01','1','ENT-3222','STF-3222','0');

