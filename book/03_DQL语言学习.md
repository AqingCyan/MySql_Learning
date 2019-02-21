## DQL语言
> Data Query language：数据查询语言
### 查询基础
语法：`select 查询列表 from 表名;`

特点：
- 查询的内容可以是：表中的字段、常量值、表达式、函数。
- 查询的结果是一个虚拟的表格

#### 查询字段
查询`employess`表中的`last_name`字段：
```
SELECT last_name
FROM employees;
```
查询`employess`表中的`last_name`，`salary`，`email`字段：
```
SELECT last_name, salary, email
FROM employees;
```
查询`employess`表中的所有字段：
```
SELECT *
FROM employees;
```
查询常量值：
```
SELECT 100;
SELECT 'john';
```
查询表达式与方法：
```
SELECT 100 * 20;
SELECT VERSION();
```
> 建议在每次查询表时，在最前面说明使用的是哪一个数据库：`USE [database_name]`，当然，在我们查询表达式方法或者常量值的时候，输出的字段名也是查询的字段名，例如查询`100*2`，输出的字段名就是`100*2`，字段内容是`200`。所以我们可以通过起别名的方式来方便查看。

查询时可以起别名：
- 便于理解
- 如果要查询的字段有重名的情况，使用别名可以区分开来
```
SELECT 100 * 2 AS result;
SELECT VERSION() AS version;
#或者通过以下方式
SELECT last_name 姓, first_name 名 
FROM employees;
```
- 查询时去重(例如查询员工表中的部门编号，没必要都展示，仅展示每个部门一次即可)
```
SELECT DISTINCT department_id
FROM employees
```
- `+`号的作用，只用作数值运算，如果是两数相加就为数字，字符相加则将字符转为数值在做运算，如果字符转化失败则转化为0，如果其中一方为null，则结果肯定为null。
```
SELECT 'join' + 90; # 90
SELECT '123' + 1; # 124
SELECT null + 10; # null
```
- 使用`CONCAT`来拼接字段并整个输出(例如将`last_name`和`first_name`拼接成一个字段并按姓名输出)
```
SELECT CONCAT(last_name, first_name) AS name
FROM employees;
```
- 输出表结构
```
DESC employees;
```
- 判断是否为空
```
SELECT IFNULL(commission_pct, 0) AS result
FROM employees; # 判断是否为空，为空输出0
```
