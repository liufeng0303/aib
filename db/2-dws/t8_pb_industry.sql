--
-- 行业
--
drop   table pb_industry;
create table pb_industry (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,level    varchar(16)  not null
,id_up    varchar(16)  not null
,sno      bigint       not null
);
create unique index pb_industry_pk on pb_industry ( stt_date, end_date, id );

comment on table  pb_industry          is '行业表';
comment on column pb_industry.stt_date is '开始日期';
comment on column pb_industry.end_date is '结束日期';
comment on column pb_industry.id       is '行业编码';
comment on column pb_industry.name     is '行业名称';
comment on column pb_industry.level    is '行业级别：1_一级，2_二级，3_三级';
comment on column pb_industry.id_up    is '上级编码，一级行业上级编码为00000';
comment on column pb_industry.sno      is 'sort number';

insert into pb_industry values ('20230101','29991231','A0000', '农、林、牧、渔业',                '1','00000',110001);
insert into pb_industry values ('20230101','29991231','B0000', '制造业',                          '1','00000',120001);
insert into pb_industry values ('20230101','29991231','C0000', '批发和零售业',                    '1','00000',130001);
insert into pb_industry values ('20230101','29991231','D0000', '水利、环境和公共设施管理业',      '1','00000',140001);
insert into pb_industry values ('20230101','29991231','E0000', '卫生和社会工作',                  '1','00000',150001);
insert into pb_industry values ('20230101','29991231','F0000', '文化、体育和娱乐业',              '1','00000',160001);
insert into pb_industry values ('20230101','29991231','G0000', '信息传输、软件和信息技术服务业',  '1','00000',170001);
insert into pb_industry values ('20230101','29991231','H0000', '住宿和餐饮业',                    '1','00000',180001);
insert into pb_industry values ('20230101','29991231','I0000', '租赁和商务服务业',                '1','00000',190001);
insert into pb_industry values ('20230101','29991231','J0000', '采矿业',                          '1','00000',200001);
insert into pb_industry values ('20230101','29991231','K0000', '电力、热力、燃气及水生产和供应业','1','00000',210001);
insert into pb_industry values ('20230101','29991231','L0000', '建筑业',                          '1','00000',220001);
insert into pb_industry values ('20230101','29991231','M0000', '交通运输、仓储和邮政业',          '1','00000',230001);
insert into pb_industry values ('20230101','29991231','N0000', '科学研究和技术服务业',            '1','00000',240001);

insert into pb_industry values ('20230101','29991231','X0000', '未知行业类别(1)',                 '1','00000',990001);
insert into pb_industry values ('20230101','29991231','XX000', '未知行业类别(2)',                 '2','X0000',990002);
insert into pb_industry values ('20230101','29991231','XXX00', '未知行业类别(3)',                 '3','XX000',990003);
insert into pb_industry values ('20230101','29991231','XXXX0', '未知行业类别(4)',                 '4','XXX00',990004);
insert into pb_industry values ('20230101','29991231','XXXXX', '未知行业类别(5)',                 '5','XXXX0',990005);

