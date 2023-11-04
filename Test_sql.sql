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


create table  zzk_date (date_col date);

drop table zzk_char;


# drop table 
CREATE TABLE drop_table_3(id int, name char(20), age int);
INSERT INTO drop_table_3 VALUES (1,'MiniOB',12);
SELECT * FROM drop_table_3;
DROP TABLE drop_table_3;
INSERT INTO drop_table_3 VALUES (2,'MiniOB',13);