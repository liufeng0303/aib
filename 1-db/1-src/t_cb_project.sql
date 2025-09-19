--
-- 核心系统：项目表
--
drop   table cb_project;
create table cb_project (
 id            varchar(999) not null
,name          varchar(999) not null
,customer      varchar(999) not null
,purpose       varchar(999) not null
,manager       varchar(999) not null
);
create unique index cb_project_pk on cb_project( id );

comment on table  cb_project          is '项目表';
comment on column cb_project.id       is '项目代号';
comment on column cb_project.name     is '项目名称';
comment on column cb_project.customer is '客户号';
comment on column cb_project.purpose  is '用途代号：设备、房屋等';
comment on column cb_project.manager  is '客户经理代号';

