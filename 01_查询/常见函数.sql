# 字符函数
# LENGTH 获取参数值的字节个数
SELECT LENGTH('john');
SELECT LENGTH('张三丰哈哈哈');
SHOW VARIABLES LIKE '%char%';

# CONCAT拼接字符
SELECT CONCAT(last_name, '_', first_name)
FROM myemployees.employees;

# UPPER、LOWER变换大小写
# 示例：姓变大写，名变小写
SELECT CONCAT(UPPER(last_name), LOWER(first_name)) AS 'name'
FROM myemployees.employees;

# SUBSTRING截取字符，mysql中索引都从1开始，如下案例截取出'Aqing'
SELECT SUBSTRING('CyanAqing', 5) AS '外号';
# 截取出Cyan
SELECT SUBSTRING('CyanAqing', 1, 4) AS 'name';

# 案例：姓名中的首字符小写，其他字符大写然后用_拼接，显示出来
SELECT CONCAT(LOWER(SUBSTRING(last_name, 1, 1)), UPPER(SUBSTRING(last_name, 2)), '_', UPPER(first_name)) AS 'name'
FROM myemployees.employees;

# INSTR 返回子串在字符串中的起始索引，且只返回第一个找到的位置，未找到就返回0
SELECT INSTR('AqingCyan', 'ing') AS out_put;

# TRIM 去前后空格，或指定字符
SELECT LENGTH(TRIM('  Aqing   ')) AS out_put,
       LENGTH('  Aqing   ')       AS 'old';

SELECT TRIM('a' FROM 'aaaQingaaa') AS 'result';

# LPAD 左填充指定字符到指定长度
SELECT LPAD('Aqing', 10, '*') AS 'result';

# RPAD
SELECT RPAD('Cyan', 10, '*') AS 'result';

# REPLACE 替换
SELECT REPLACE('AQINGCyan', 'AQING', 'Aqing') AS 'new_name';

# 数学函数
# ROUND 四舍五入
SELECT ROUND(1.65);

# CEIL 向上取整，返回大于等于该参数的最小整数
SELECT CEIL(1.52);

# FLOOR 向下取整，返回小于等于该参数的最大整数
SELECT FLOOR(9.99);

# TRUNCATE 小数点后保留几位
SELECT TRUNCATE(1.65, 1);

# MOD取余
SELECT MOD(10, 3);

# 日期函数
# NOW 获取当前日期时间
SELECT NOW();

# CURDATE 返回当前系统日期，不包含时间
SELECT CURDATE();

# CURTIME 返回当前时间，不包含日期
SELECT CURTIME();

# 可以获取指定的部分，年月日小时分秒
SELECT YEAR(NOW());
SELECT MONTH(NOW());
SELECT DAY(NOW());
SELECT HOUR(NOW());

# STR_TO_DATE：将日期格式的字符转换成指定格式的日期
SELECT STR_TO_DATE('1998-6-2', '%Y-%c-%d') AS out_put;

# 案例：查询入职日期为1992-4-3的员工信息
SELECT *
FROM myemployees.employees
WHERE hiredate = STR_TO_DATE('4-3-1992', '%c-%d-%Y');

# DATE_FORMAT：将日期转换成字符
SELECT DATE_FORMAT(NOW(), '%Y年%m月%d日') AS 'date';

# 案例：查询有奖金的员工的员工名和入职日期（xx月/xx日 xx年）
SELECT CONCAT(myemployees.employees.last_name, myemployees.employees.first_name) AS 'name',
       DATE_FORMAT(myemployees.employees.hiredate, '%m月/%d日 %y年')
FROM myemployees.employees
WHERE myemployees.employees.commission_pct IS NOT NULL;

# 其他函数
# VERSION：查看数据库版本号
# DATABASE()：查看当前数据库
# SELECT USER()：查看当前用户