## SQL语句

### 操作文件夹（库）:
```
1增====:create database 'name' charset utf8;
2删====:drop database 'name';
3查====:show create database 'name';
        show databases;
4改====:alter database 'name' charset gbk;   将编码由utf8改为gbk编码
```
-----------------------------------------------------------------
### 操作文件（表）:
```
切换文件夹：use 'name';
查看当前文件夹： select database();

1增====:create table 'name' (id int, name char);
2查====:show create table 'name';
        show tables;
        desc 'name';     输出的信息更加的结构化
3改====:alter table 'name' modify 'Field' 'target';
        for example:
        alter table t1 modify name char(8);
        alter table t1 change name NAME char(10);
4删====:
        drop table 'name';
```
-------------------------------------------------------------
### 操作文件内容(记录):
```
1增====:insert t1(id, name) values(1, 'chenying'),(2, 'yewenjing'), (3, 'chenyuye');
2查====:select id, name from t1;
        select * from t1;
3改====:update db1.t1 set name='周星驰' where id=3;
4删====:delete from t1 where id=2;
```
----------------------------------------------------------------
## 存储引擎
```
show engines\G   查看支持的存储引擎的类型
create table t2(id int)engine=innodb;  创建指定引擎的表


```
