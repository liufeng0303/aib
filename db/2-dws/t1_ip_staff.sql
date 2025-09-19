--
-- 员工
--
drop   table ip_staff;
create table ip_staff (
 stt_date    varchar(8)   not null
,end_date    varchar(8)   not null
,id          varchar(16)  not null
,name        varchar(256) not null
,customer    varchar(16)  not null
,orgnization varchar(16)  not null
,bizline     varchar(16)  not null
,position    varchar(16)  not null
);
create unique index ip_staff_pk on ip_staff( stt_date, end_date, id );

comment on table  ip_staff             is 'staff defination';
comment on column ip_staff.stt_date    is 'start date';
comment on column ip_staff.end_date    is 'end date';
comment on column ip_staff.id          is 'id';
comment on column ip_staff.name        is 'name';
comment on column ip_staff.customer    is 'customer id';
comment on column ip_staff.orgnization is 'orgnization id';
comment on column ip_staff.bizline     is 'business line id';
comment on column ip_staff.position    is 'staff postion level';

insert into ip_staff values ('20230101','29991231','STF-1111','一部01','PER-1111','ORG-000001','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1112','一部02','PER-1112','ORG-000001','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1113','一部03','PER-1113','ORG-000001','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1114','一部04','PER-1114','ORG-000001','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1115','一部05','PER-1115','ORG-000001','biz-3200','01');

insert into ip_staff values ('20230101','29991231','STF-1211','二部01','PER-1211','ORG-000002','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1212','二部02','PER-1212','ORG-000002','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1213','二部03','PER-1213','ORG-000002','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1214','二部04','PER-1214','ORG-000002','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-1215','二部05','PER-1215','ORG-000002','biz-3200','01');

insert into ip_staff values ('20230101','29991231','STF-3111','三部01','PER-3111','ORG-000003','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3112','三部02','PER-3112','ORG-000003','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3113','三部03','PER-3113','ORG-000003','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3114','三部04','PER-3114','ORG-000003','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3115','三部05','PER-3115','ORG-000003','biz-3200','01');

insert into ip_staff values ('20230101','29991231','STF-3211','四部01','PER-3211','ORG-000004','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3212','四部02','PER-3212','ORG-000004','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3213','四部03','PER-3213','ORG-000004','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3214','四部04','PER-3214','ORG-000004','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3215','四部05','PER-3215','ORG-000004','biz-3200','01');

insert into ip_staff values ('20230101','29991231','STF-3221','五部01','PER-3221','ORG-000005','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3222','五部02','PER-3222','ORG-000005','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3223','五部03','PER-3223','ORG-000005','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3224','五部04','PER-3224','ORG-000005','biz-3200','01');
insert into ip_staff values ('20230101','29991231','STF-3225','五部05','PER-3225','ORG-000005','biz-3200','01');

