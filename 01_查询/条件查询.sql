USE myemployees;
# 按表达式筛选
# 案例1：查询工资 > 12000的员工信息
SELECT *
FROM employees
WHERE salary > 12000;

# 案例2：查询部门编号不等于90号的员工名和部门编号
SELECT CONCAT(last_name, first_name) AS 'name',
       department_id
FROM employees
WHERE department_id <> 90;

# 案例3：工资在一万到两万之间的员工名、工资以及奖金
SELECT CONCAT(last_name, first_name) AS 'name',
       salary,
       IFNULL(commission_pct, 0)
FROM employees
WHERE salary >= 10000
  AND salary <= 20000;

# 案例4：查询部门编号不是90到110之间，或者工资高于15000的员工信息
SELECT *
FROM employees
WHERE department_id < 90
   OR department_id > 110
   OR salary > 15000;

# 案例5：查询员工名中包含字符a的员工信息
SELECT *
FROM employees
WHERE CONCAT(last_name, first_name) LIKE '%a%';

# 案例6：查询员工名中第三个字符为e，第五个字符为a的员工名和工资
SELECT CONCAT(last_name, first_name) AS 'name',
       salary
FROM employees
WHERE CONCAT(last_name, first_name) LIKE '__e_a%';

# 案例7：查询员工名中第二个字符为_的员工名
SELECT CONCAT(last_name, first_name) AS 'name'
FROM employees
WHERE CONCAT(last_name, first_name) LIKE '_\_%';

SELECT CONCAT(last_name, first_name) AS 'name'
FROM employees
WHERE CONCAT(last_name, first_name) LIKE '_$_%' ESCAPE '$';

# 案例8：查询员工编号在100到120之间的员工信息
SELECT *
FROM employees
WHERE employee_id BETWEEN 100 AND 120;

# 案例9：查询员工的工种编号是 IT_PROG、AD_VP、AD_PRES中的一个员工名和工种编号
SELECT CONCAT(last_name, first_name) AS 'name',
       job_id
FROM employees
WHERE job_id IN ('IT_PROG', 'AD_VP', 'AD_PRES');

# 案例10：查询没有奖金的员工名和奖金率
SELECT CONCAT(last_name, first_name) AS 'name',
       commission_pct
FROM employees
WHERE commission_pct IS NULL;

# 使用安全等于判断null
SELECT CONCAT(last_name, first_name) AS 'name',
       commission_pct
FROM employees
WHERE commission_pct <=> NULL;