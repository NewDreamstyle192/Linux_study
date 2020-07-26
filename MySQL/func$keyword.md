## SUM, COUNT, MAX, 
```
[SELECT COUNT(name) 
  FROM world
 WHERE area >= 1000000]
```

## GROUP BY, ORDER BY, HAVING
```
For each continent show the continent and number of countries.
[SELECT continent, COUNT(name) 
  FROM world
GROUP BY continent]
```

## DISTINCT
```
[SELECT DISTINCT continent 
  FROM world]
```


### 注意点：
```
1, The WHERE filter takes place before the aggregating function.
[SELECT continent, COUNT(NAME) 
  FROM world 
 WHERE popuation > 200000000 
 GROUP BY continent]
 
2, The HAVING clause is tested after the GROUP BY 
[SELECT continent, SUM(population)
  FROM world
 GROUP BY continent
 HAVING SUM(population) > 500000000]
```



