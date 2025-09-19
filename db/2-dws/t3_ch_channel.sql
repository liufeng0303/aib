--
-- 渠道
--
drop   table ch_channel;
create table ch_channel (
 stt_date varchar(8)   not null
,end_date varchar(8)   not null
,id       varchar(16)  not null
,name     varchar(256) not null
,sno      bigint       not null
);
create unique index ch_channel_pk on ch_channel( stt_date, end_date, id );

comment on table  ch_channel          is 'channel defination';
comment on column ch_channel.stt_date is 'start date';
comment on column ch_channel.end_date is 'end state';
comment on column ch_channel.id       is 'id';
comment on column ch_channel.name     is 'name';
comment on column ch_channel.sno      is 'sort number';

insert into ch_channel values ('20230101','29991231','CHN-0101','柜面',    0);
insert into ch_channel values ('20230101','29991231','CHN-0102','自助银行',0);
insert into ch_channel values ('20230101','29991231','CHN-0201','手机银行',0);
insert into ch_channel values ('20230101','29991231','CHN-0202','网银银行',0);
insert into ch_channel values ('20230101','29991231','CHN-0203','微信银行',0);

