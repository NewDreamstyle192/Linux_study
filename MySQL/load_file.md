## .CSV
```
example: csv file first row is [id, name, gender('F', 'M'), level('vip1','vip2','vip3'), births]
         1=========== create
         CREATE TABLE consumer(
              id int,
              name char(8),
              gender enum('F','M'),,
              level set('vip1','vip2','vip3'),
              births int
         );
         2=========== load
         LOAD DATA LOCAL INFILE '/tmp/mystudy_data/data/consumer.csv'
         INTO TABLE consumer 
         FILEDS TERMINATED BY ',' #csv文件都是以逗号为分隔符
         ENCLOSED BY '"'
         LINES TERMINATED BY '\n'
         IGNORE 1 ROWS;
```
