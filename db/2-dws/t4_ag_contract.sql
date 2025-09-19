--
-- 合同
--
drop   table ag_contract;
create table ag_contract (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,customer varchar(16)  not null
,project  varchar(16)  not null
);
create unique index ag_contract_pk on ag_contract( stt_date, end_date, id );

comment on table  ag_contract          is 'lease contract';
comment on column ag_contract.stt_date is 'start date';
comment on column ag_contract.end_date is 'end date';
comment on column ag_contract.id       is 'contract id';
comment on column ag_contract.name     is 'contract name';
comment on column ag_contract.customer is '客户：customer id';
comment on column ag_contract.project  is '项目：project_id';

insert into ag_contract values ( '20231010','29991231', 'CTR-1101', '北京城投租赁合同20231010','ENT-1101','PRJ-1101');
insert into ag_contract values ( '20231011','29991231', 'CTR-1102', '北京城投租赁合同20231011','ENT-1101','PRJ-1102');
insert into ag_contract values ( '20231011','29991231', 'CTR-1201', '天津城投租赁合同20231010','ENT-1201','PRJ-1201');
insert into ag_contract values ( '20231011','29991231', 'CTR-1202', '天津城投租赁合同20231011','ENT-1201','PRJ-1202');
insert into ag_contract values ( '20231010','29991231', 'CTR-3101', '上海城投租赁合同20231010','ENT-3101','PRJ-3101');
insert into ag_contract values ( '20231011','29991231', 'CTR-3102', '上海城投租赁合同20231011','ENT-3101','PRJ-3102');

