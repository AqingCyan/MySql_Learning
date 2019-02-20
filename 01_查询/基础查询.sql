#进阶1：基础查询
/*
语法：
select 查询列表 from 表名;
特点：
1、查询的内容可以是：表中的字段、常量值、表达式、函数
2、查询的结果是一个虚拟的表格
*/
USE myemployees;
# 1. 查询表中的单个字段
SELECT last_name
FROM employees;
# 2. 查询表中多个字段
SELECT last_name, salary, email
FROM employees;
# 3. 查询表中所有字段
SELECT *
FROM employees;
# 4. 查询常量值
SELECT 100;
SELECT 'john';
# 5. 查询表达式
SELECT 100 * 20;
# 6. 查询函数
SELECT VERSION();
# 7. 起别名
SELECT 100 * 2 AS result;
SELECT VERSION() AS version;

SELECT last_name 姓, first_name 名
FROM employees;
# 8. 去重
# 查询员工表中涉及到所以的部门编号
SELECT DISTINCT department_id
FROM employees;

# 9. +号的作用，只用作数值运算，如果是两数相加就为数字，字符相加则将字符转为数值在做运算，
# 如果字符转化失败则转化为0，如果其中一方为null，则结果肯定为null
SELECT 'join' + 90;
SELECT '123' + 1;
SELECT null + 10;

# 10. 拼接字段
SELECT CONCAT(last_name, first_name) AS name
FROM employees;

# 11. 显示表结构
DESC employees;

# 12. 判断是否为null
SELECT IFNULL(commission_pct, 0) AS result,
       commission_pct
FROM employees;