--
-- 总账账户
--
drop   table fi_gl_acc_book;
create table fi_gl_acc_book (
 stt_date     varchar(8)    not null
,end_date     varchar(8)    not null
,acc_book     varchar(16)   not null
,orgnization  varchar(16)   not null
,department   varchar(16)   not null
,currency     varchar(16)   not null
,account      varchar(256)  not null
,bizline      varchar(16)   not null
,product      varchar(16)   not null
,acc_attr     varchar(1)    not null
,deb_cre_flg  varchar(1)    not null
,bal_dr       numeric(21,2) not null
,bal_cr       numeric(21,2) not null
,bgn_bal_dr_Y numeric(21,2) not null
,bgn_bal_cr_Y numeric(21,2) not null
,bgn_bal_dr_M numeric(21,2) not null
,bgn_bal_cr_M numeric(21,2) not null
);
create unique index fi_gl_acc_book_pk on fi_gl_acc_book ( stt_date,end_date,acc_book,account );

comment on table  fi_gl_acc_book              is '总账科目账户册（余额表）';
comment on column fi_gl_acc_book.stt_date     is '开始日期';
comment on column fi_gl_acc_book.end_date     is '结束日期';
comment on column fi_gl_acc_book.acc_book     is '账套编码';
comment on column fi_gl_acc_book.orgnization  is '机构编码';
comment on column fi_gl_acc_book.department   is '机构编码';
comment on column fi_gl_acc_book.currency     is '货币编码';
comment on column fi_gl_acc_book.account      is '账户（末级科目）编码';
comment on column fi_gl_acc_book.bizline      is '业务线编码';
comment on column fi_gl_acc_book.product      is '产品编码';
comment on column fi_gl_acc_book.acc_attr     is '科目属性：资产A/负债L/权益E/损益P/系统内往来T/表外O';
comment on column fi_gl_acc_book.deb_cre_flg  is '借贷方向：1_借/2_贷/0_双方';
comment on column fi_gl_acc_book.bal_dr       is '借方余额';
comment on column fi_gl_acc_book.bal_cr       is '贷方余额';
comment on column fi_gl_acc_book.bgn_bal_dr_Y is '年初借方余额';
comment on column fi_gl_acc_book.bgn_bal_cr_Y is '年初贷方余额';
comment on column fi_gl_acc_book.bgn_bal_dr_M is '月初借方余额';
comment on column fi_gl_acc_book.bgn_bal_cr_M is '月初贷方余额';


insert into fi_gl_acc_book values ('20230101','29991231','BK11','ORG-000001','ORG-000001','00','ACC-01','BIZ-32','1-2-01-01','A','1',100,0,100,0,100,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK11','ORG-000001','ORG-000001','00','ACC-02','BIZ-32','1-2-01-02','A','1',200,0,200,0,200,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK11','ORG-000001','ORG-000001','00','ACC-03','BIZ-32','1-2-01-03','A','1',300,0,300,0,300,0);

insert into fi_gl_acc_book values ('20230101','29991231','BK12','ORG-000002','ORG-000002','00','ACC-01','BIZ-32','1-2-01-01','A','1',100,0,100,0,100,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK12','ORG-000002','ORG-000002','00','ACC-02','BIZ-32','1-2-01-02','A','1',200,0,200,0,200,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK12','ORG-000002','ORG-000002','00','ACC-03','BIZ-32','1-2-01-03','A','1',300,0,300,0,300,0);

insert into fi_gl_acc_book values ('20230101','29991231','BK13','ORG-000003','ORG-000003','00','ACC-01','BIZ-32','1-2-01-01','A','1',100,0,100,0,100,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK13','ORG-000003','ORG-000003','00','ACC-02','BIZ-32','1-2-01-02','A','1',200,0,200,0,200,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK13','ORG-000003','ORG-000003','00','ACC-03','BIZ-32','1-2-01-03','A','1',300,0,300,0,300,0);

insert into fi_gl_acc_book values ('20230101','29991231','BK14','ORG-000004','ORG-000004','00','ACC-01','BIZ-32','1-2-01-01','A','1',100,0,100,0,100,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK14','ORG-000004','ORG-000004','00','ACC-02','BIZ-32','1-2-01-02','A','1',200,0,200,0,200,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK14','ORG-000004','ORG-000004','00','ACC-03','BIZ-32','1-2-01-03','A','1',300,0,300,0,300,0);

insert into fi_gl_acc_book values ('20230101','29991231','BK15','ORG-000005','ORG-000005','00','ACC-01','BIZ-32','1-2-01-01','A','1',100,0,100,0,100,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK15','ORG-000005','ORG-000005','00','ACC-02','BIZ-32','1-2-01-02','A','1',200,0,200,0,200,0);
insert into fi_gl_acc_book values ('20230101','29991231','BK15','ORG-000005','ORG-000005','00','ACC-03','BIZ-32','1-2-01-03','A','1',300,0,300,0,300,0);

