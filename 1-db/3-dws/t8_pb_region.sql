--
-- 区域
--
drop   table pb_region;
create table pb_region (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,level    varchar(16)  not null
,id_up    varchar(16)  not null
,sno      bigint       not null
);
create unique index pb_region_pk on pb_region ( stt_date, end_date, id );

comment on table  pb_region          is '区域表';
comment on column pb_region.stt_date is '开始日期';
comment on column pb_region.end_date is '结束日期';
comment on column pb_region.id       is '区域编码';
comment on column pb_region.name     is '区域名称';
comment on column pb_region.level    is '区域级别：1_省，2_市，3_区县';
comment on column pb_region.id_up    is '上级编码，省的上级编码为000000';
comment on column pb_region.sno      is 'sort number';

insert into pb_region values ('20230101','29991231','110000','北京市',          '1','000000',110000);
insert into pb_region values ('20230101','29991231','120000','天津市',          '1','000000',120000);
insert into pb_region values ('20230101','29991231','130000','河北省',          '1','000000',130000);
insert into pb_region values ('20230101','29991231','140000','山西省',          '1','000000',140000);
insert into pb_region values ('20230101','29991231','150000','内蒙古自治区',    '1','000000',150000);
insert into pb_region values ('20230101','29991231','210000','辽宁省',          '1','000000',210000);
insert into pb_region values ('20230101','29991231','220000','吉林省',          '1','000000',220000);
insert into pb_region values ('20230101','29991231','230000','黑龙江省',        '1','000000',230000);
insert into pb_region values ('20230101','29991231','310000','上海市',          '1','000000',310000);
insert into pb_region values ('20230101','29991231','320000','江苏省',          '1','000000',320000);
insert into pb_region values ('20230101','29991231','330000','浙江省',          '1','000000',330000);
insert into pb_region values ('20230101','29991231','340000','安徽省',          '1','000000',340000);
insert into pb_region values ('20230101','29991231','350000','福建省',          '1','000000',350000);
insert into pb_region values ('20230101','29991231','360000','江西省',          '1','000000',360000);
insert into pb_region values ('20230101','29991231','370000','山东省',          '1','000000',370000);
insert into pb_region values ('20230101','29991231','410000','河南省',          '1','000000',410000);
insert into pb_region values ('20230101','29991231','420000','湖北省',          '1','000000',420000);
insert into pb_region values ('20230101','29991231','430000','湖南省',          '1','000000',430000);
insert into pb_region values ('20230101','29991231','440000','广东省',          '1','000000',440000);
insert into pb_region values ('20230101','29991231','450000','广西壮族自治区',  '1','000000',450000);
insert into pb_region values ('20230101','29991231','460000','海南省',          '1','000000',460000);
insert into pb_region values ('20230101','29991231','500000','重庆市',          '1','000000',500000);
insert into pb_region values ('20230101','29991231','510000','四川省',          '1','000000',510000);
insert into pb_region values ('20230101','29991231','520000','贵州省',          '1','000000',520000);
insert into pb_region values ('20230101','29991231','530000','云南省',          '1','000000',530000);
insert into pb_region values ('20230101','29991231','540000','西藏自治区',      '1','000000',540000);
insert into pb_region values ('20230101','29991231','610000','陕西省',          '1','000000',610000);
insert into pb_region values ('20230101','29991231','620000','甘肃省',          '1','000000',620000);
insert into pb_region values ('20230101','29991231','630000','青海省',          '1','000000',630000);
insert into pb_region values ('20230101','29991231','640000','宁夏回族自治区',  '1','000000',640000);
insert into pb_region values ('20230101','29991231','650000','新疆维吾尔自治区','1','000000',650000);
insert into pb_region values ('20230101','29991231','710000','台湾省',          '1','000000',710000);
insert into pb_region values ('20230101','29991231','810000','香港特别行政区',  '1','000000',810000);
insert into pb_region values ('20230101','29991231','820000','澳门特别行政区',  '1','000000',820000);

insert into pb_region values ('20230101','29991231','990000','未知区域(1)',     '1','000000',990000);
insert into pb_region values ('20230101','29991231','999900','未知区域(2)',     '2','990000',999900);
insert into pb_region values ('20230101','29991231','999999','未知区域(3)',     '3','999900',999999);

