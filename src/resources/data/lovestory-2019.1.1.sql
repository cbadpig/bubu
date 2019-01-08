/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/1/8 16:55:44                            */
/*==============================================================*/


drop table if exists t_hs_dt;

drop table if exists t_hs_dz;

drop table if exists t_hs_gz;

drop table if exists t_hs_pl;

drop table if exists t_hs_sc;

drop table if exists t_hs_sx;

drop table if exists t_hs_tg;

drop table if exists t_hs_wzwj;

drop table if exists t_hs_xh;

drop table if exists t_hs_zs;

drop table if exists t_sys_hmd;

drop table if exists t_sys_yh;

/*==============================================================*/
/* Table: t_hs_dt                                               */
/*==============================================================*/
create table t_hs_dt
(
   id                   int not null auto_increment,
   yh_id                int,
   dx_id                int,
   lx                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_dz                                               */
/*==============================================================*/
create table t_hs_dz
(
   id                   int not null auto_increment,
   yh_id                int,
   zj_id                int,
   zjyh_id              int,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_gz                                               */
/*==============================================================*/
create table t_hs_gz
(
   id                   int not null auto_increment,
   gzyh_id              int,
   dxyh_id              int,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_pl                                               */
/*==============================================================*/
create table t_hs_pl
(
   id                   int not null auto_increment,
   f_id                 int,
   zj_id                int,
   plyh_id              int,
   dxyh_id              int,
   dzsl                 int,
   plnr                 text,
   plsj                 varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_sc                                               */
/*==============================================================*/
create table t_hs_sc
(
   id                   int not null auto_increment,
   yh_id                int,
   zj_id                int,
   zjyh_id              int,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_sx                                               */
/*==============================================================*/
create table t_hs_sx
(
   id                   int not null auto_increment,
   sxyh_id              int,
   dxyh_id              int,
   nr                   text,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_tg                                               */
/*==============================================================*/
create table t_hs_tg
(
   id                   int not null auto_increment,
   yh_id                int,
   zj_id                int,
   wz_id                int,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_wzwj                                             */
/*==============================================================*/
create table t_hs_wzwj
(
   id                   int not null auto_increment,
   wj_id                int,
   bt                   varchar(64),
   ms                   varchar(255),
   fm                   varchar(64),
   nr                   text,
   wzzt                 int,
   wzzs                 int,
   ydsl                 int,
   plsl                 int,
   xhsl                 int,
   zssl                 int,
   fbsj                 varchar(64),
   wzxh                 int,
   yh_id                int,
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_xh                                               */
/*==============================================================*/
create table t_hs_xh
(
   id                   int not null auto_increment,
   yh_id                int,
   zj_id                int,
   zjyh_id              int,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_hs_zs                                               */
/*==============================================================*/
create table t_hs_zs
(
   id                   int not null auto_increment,
   yh_id                int,
   zsje                 int,
   zj_id                int,
   zjyh_id              int,
   zt                   int,
   sj                   varchar(64),
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_hmd                                             */
/*==============================================================*/
create table t_sys_hmd
(
   id                   int not null auto_increment,
   yh_id                int,
   hyh_id               int,
   primary key (id)
);

/*==============================================================*/
/* Table: t_sys_yh                                              */
/*==============================================================*/
create table t_sys_yh
(
   id                   int not null auto_increment,
   sj                   int,
   yx                   varchar(64),
   mm                   varchar(64),
   nc                   varchar(12),
   xb                   int,
   lx                   int,
   jsxx                 int,
   jsyxtz               int,
   grms                 varchar(64),
   zskg                 int,
   zsms                 varchar(64),
   txtp                 varchar(64),
   zcsj                 varchar(64),
   dlsj                 varchar(64),
   primary key (id)
);

