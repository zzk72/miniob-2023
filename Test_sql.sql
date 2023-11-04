# Commands @zzk
show tables;
desc `table name`;
create table `table name` (`column name` `column type`, ...);
create index `index name` on `table` (`column`);
insert into `table` values(`value1`,`value2`);
update `table` set column=value [where `column`=`value`];
delete from `table` [where `column`=`value`];
select [ * | `columns` ] from `table`;


create table  zzk (int_col int,float_col float);
insert into zzk values (1,1.1);
insert into zzk values (2,2.2);
insert into zzk values (3,3.3);
select * from zzk;
update zzk set float_col=4.4 where int_col=3;
delete from zzk where int_col=2;


