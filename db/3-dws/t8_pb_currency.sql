--
-- 货币
--
drop   table pb_currency;
create table pb_currency (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,type     varchar(8)   not null
,type_cmt varchar(256) not null
,sno      bigint       not null
);
create unique index pb_currency_pk on pb_currency ( stt_date,end_date,id );

comment on table  pb_currency          is '币种表';
comment on column pb_currency.stt_date is '开始日期';
comment on column pb_currency.end_date is '结束日期';
comment on column pb_currency.id       is '编码';
comment on column pb_currency.name     is '名称';
comment on column pb_currency.type     is '种类';
comment on column pb_currency.type_cmt is '种类说明';
comment on column pb_currency.sno      is 'sort number';

insert into pb_currency values ( '20230101', '29991231', '00', '人民币',      '1', '本币',         100 );
insert into pb_currency values ( '20230101', '29991231', '01', '美元',        '1', '本币',         101 );
insert into pb_currency values ( '20230101', '29991231', '02', '欧元',        '1', '本币',         102 );
insert into pb_currency values ( '20230101', '29991231', '03', '日元',        '1', '本币',         103 );
insert into pb_currency values ( '20230101', '29991231', '04', '港币',        '1', '本币',         104 );

insert into pb_currency values ( '20230101', '29991231', '52', '欧元折美元',  '2', '外币折美元',   152 );
insert into pb_currency values ( '20230101', '29991231', '53', '日元折美元',  '2', '外币折美元',   153 );
insert into pb_currency values ( '20230101', '29991231', '54', '港币折美元',  '2', '外币折美元',   154 );

insert into pb_currency values ( '20230101', '29991231', '97', '外币折美元',  '7', '外币折美元',   197 );
insert into pb_currency values ( '20230101', '29991231', '98', '外币折人民币','8', '外币折人民币', 198 );
insert into pb_currency values ( '20230101', '29991231', '99', '综合人民币',  '9', '综合人民币',   199 );

