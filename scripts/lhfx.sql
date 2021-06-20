MariaDB [(none)]> show databases;

MariaDB [(none)]> create database lhfx;

MariaDB [(none)]> use lhfx;

drop table if exists hs300_20210618;

create table if not exists hs300_20210618(
daima char(6),
mingcheng varchar(32),
zhangfu double,
xianjia double,
zhangdie double,
maijia double,
maijia2 double,
zongliang int,
xianliang int,
huanshoulv double,
jinkai double,
zuigao double,
zuidi double,
zuoshou double,
shiying_dongtai double,
zonjine double,
xifenhangye varchar(32),
diqu varchar(16),
zhenfu double,
junjia double,
mailiang int,
mailinag2 int,
liutonggu double,
liutongshizhi double,
zongshizhi double,
ttm double,
shiying_jingtai double,
primary key (daima)
);


MariaDB [lhfx]> truncate table hs300_20210618;

-- ¼ÓÔØÊý¾Ý

MariaDB [lhfx]> load data local infile '/home/wm/data/hs300_20210618.csv' into table hs300_20210618 FIELDS TERMINATED BY ','  LINES TERMINATED BY '\n' IGNORE 1 lines (daima,mingcheng,zhangfu,xianjia,zhangdie,maijia,maijia2,zongliang,xianliang,@,huanshoulv,jinkai,zuigao,zuidi,zuoshou,shiying_dongtai,zonjine,@,xifenhangye,diqu,zhenfu,junjia,@,@,@,mailiang,mailinag2,@,@,@,@,@,liutonggu,liutongshizhi,zongshizhi,@,@,@,@,@,@,@,@,@,@,@,@,@,@,ttm,shiying_jingtai);
Query OK, 300 rows affected, 959 warnings (0.017 sec)
Records: 300  Deleted: 0  Skipped: 0  Warnings: 959


