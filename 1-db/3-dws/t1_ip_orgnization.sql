--
-- 内部机构
--
drop   table ip_orgnization;
create table ip_orgnization (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,ett_flg  varchar(16)  not null
,level    varchar(16)  not null
,id_up    varchar(16)  not null
,sno      bigint       not null
);
create unique index ip_orgnization_pk on ip_orgnization( stt_date, end_date, id );

comment on table  ip_orgnization          is 'orgnizationpe defination';
comment on column ip_orgnization.stt_date is 'start date';
comment on column ip_orgnization.end_date is 'end date';
comment on column ip_orgnization.id       is 'id';
comment on column ip_orgnization.name     is 'name';
comment on column ip_orgnization.ett_flg  is 'ETT-entity, SUM-sumary';
comment on column ip_orgnization.level    is '0_企业级汇总机构，3_省级汇总机构 6_地市级汇总机构 9_部室和支行等实体机构';
comment on column ip_orgnization.id_up    is 'up level orgnization id';
comment on column ip_orgnization.sno      is 'sort number';


----------------------------------------------------[ 0 ]---------------------------------------------------------------

insert into ip_orgnization values ('20230101','29991231','ORG-999999','全行汇总',          'SUM','0','ORG-999999',0);

----------------------------------------------------[ 3 ]---------------------------------------------------------------

insert into ip_orgnization values ('20230101','29991231','ORG-009999','总行汇总',          'SUM','3','ORG-999999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-119999','北京分行汇总',      'SUM','3','ORG-999999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-319999','上海分行汇总',      'SUM','3','ORG-999999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-329999','江苏分行汇总',      'SUM','3','ORG-999999',0);

----------------------------------------------------[ 6 ]---------------------------------------------------------------

insert into ip_orgnization values ('20230101','29991231','ORG-000099','总行本级汇总',      'SUM','6','ORG-009999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-000001','总行业务一部',      'ETT','9','ORG-000099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-000002','总行业务二部',      'ETT','9','ORG-000099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-000003','总行业务三部',      'ETT','9','ORG-000099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-000004','总行业务四部',      'ETT','9','ORG-000099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-000005','总行业务五部',      'ETT','9','ORG-000099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-000010','总行营业部',        'ETT','9','ORG-000099',0);

----------------------------------------------------[ 6 ]---------------------------------------------------------------

insert into ip_orgnization values ('20230101','29991231','ORG-110099','北京分行本级汇总',  'SUM','6','ORG-119999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110001','北京分行业务一部',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110002','北京分行业务二部',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110003','北京分行业务三部',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110004','北京分行业务四部',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110005','北京分行业务五部',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110010','北京分行营业部',    'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110011','北京分行东城支行',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110012','北京分行西城支行',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110015','北京分行朝阳支行',  'ETT','9','ORG-110099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-110016','北京分行丰台支行',  'ETT','9','ORG-110099',0);

----------------------------------------------------[ 6 ]---------------------------------------------------------------

insert into ip_orgnization values ('20230101','29991231','ORG-310099','上海分行本级汇总',  'SUM','6','ORG-319999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-310001','上海分行业务一部',  'ETT','9','ORG-310099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-310002','上海分行业务二部',  'ETT','9','ORG-310099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-310003','上海分行业务三部',  'ETT','9','ORG-310099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-310004','上海分行业务四部',  'ETT','9','ORG-310099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-310005','上海分行业务五部',  'ETT','9','ORG-310099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-310010','上海分行营业部',    'ETT','9','ORG-310099',0);

----------------------------------------------------[ 6 ]---------------------------------------------------------------

insert into ip_orgnization values ('20230101','29991231','ORG-320099','江苏分行本级汇总',  'SUM','6','ORG-329999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320001','江苏分行业务一部',  'ETT','9','ORG-320099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320002','江苏分行业务二部',  'ETT','9','ORG-320099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320003','江苏分行业务三部',  'ETT','9','ORG-320099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320004','江苏分行业务四部',  'ETT','9','ORG-320099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320005','江苏分行业务五部',  'ETT','9','ORG-320099',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320010','江苏分行营业部',    'ETT','9','ORG-320099',0);

insert into ip_orgnization values ('20230101','29991231','ORG-320199','南京分行本级汇总',  'SUM','6','ORG-329999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320101','南京分行业务一部',  'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320102','南京分行业务二部',  'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320103','南京分行业务三部',  'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320104','南京分行业务四部',  'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320105','南京分行业务五部',  'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320110','南京分行营业部',    'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320111','南京分行玄武支行',  'ETT','9','ORG-320199',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320112','南京分行秦淮支行',  'ETT','9','ORG-320199',0);

insert into ip_orgnization values ('20230101','29991231','ORG-320299','苏州分行本级汇总',  'SUM','6','ORG-329999',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320201','苏州分行业务一部',  'ETT','9','ORG-320299',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320202','苏州分行业务二部',  'ETT','9','ORG-320299',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320203','苏州分行业务三部',  'ETT','9','ORG-320299',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320204','苏州分行业务四部',  'ETT','9','ORG-320299',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320205','苏州分行业务五部',  'ETT','9','ORG-320299',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320210','苏州分行营业部',    'ETT','9','ORG-320299',0);
insert into ip_orgnization values ('20230101','29991231','ORG-320211','苏州分行姑苏支行',  'ETT','9','ORG-320299',0);

------------------------------------------------------------------------------------------------------------------------

