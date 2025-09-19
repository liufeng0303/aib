--
-- 业务线
--
drop   table ip_bizline;
create table ip_bizline (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,tp_id    varchar(16)  not null
,tp_name  varchar(256) not null
);
create unique index ip_bizline_pk on ip_bizline( stt_date, end_date, id );

comment on table  ip_bizline          is 'business line (业务线)';
comment on column ip_bizline.stt_date is 'start date';
comment on column ip_bizline.end_date is 'end date';
comment on column ip_bizline.id       is 'id';
comment on column ip_bizline.name     is 'name';
comment on column ip_bizline.tp_id    is 'type id';
comment on column ip_bizline.tp_name  is 'type name';

insert into ip_bizline values ( '20230101','29991231', 'BIZ-11', '行领导','1', '管理' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-31', '个人',  '3', '前台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-32', '公司',  '3', '前台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-33', '小企业','3', '前台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-34', '同业',  '3', '前台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-51', '运营',  '5', '中台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-52', '风险',  '5', '中台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-53', '财务',  '5', '中台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-54', '科技',  '5', '中台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-71', '行政',  '7', '后台' );
insert into ip_bizline values ( '20230101','29991231', 'BIZ-72', '人力',  '7', '后台' );

