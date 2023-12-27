# 1. =  <=>  <> !=  <  <=  >  >=
# =
SELECT 1 = 2,1 != 2,1 = '1',1 = 'a',0 = 'a'; #字符串存在隐式转换。如果转换数值不成功，则看做0

SELECT 'a' = 'a','ab' = 'ab','a' = 'b'; # 两边都是字符串的话，则按照ANSI的比较规则进行比较。

SELECT 1 = NULL,NULL = NULL; # 只要有null参与判断，结果就为null

SELECT last_name,salary,commission_pct
FROM employees
#where salary = 6000;
WHERE commission_pct = NULL;  #此时执行，不会有任何的结果

# 1.2. 安全等于。 记忆技巧：为NULL而生
SELECT 1 <=> 2,1 <=> '1',1 <=> 'a',0 <=> 'a'
FROM DUAL;

SELECT 1 <=> NULL, NULL <=> NULL
FROM DUAL;

# 1.3 <> !=
SELECT 3 <> 2,'4' <> NULL, NULL <> NULL,  '' != NULL,NULL != NULL;

# 练习：查询表中commission_pct为null的数据有哪些
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct <=> NULL;

# 2. 关键字
# 2.1. IS NULL \ IS NOT NULL \ ISNULL
# 练习：查询表中commission_pct为null的数据有哪些
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NULL;
# 或
SELECT last_name,salary,commission_pct
FROM employees
WHERE ISNULL(commission_pct);

# 练习：查询表中commission_pct不为null的数据有哪些
SELECT last_name,salary,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;
# 或
SELECT last_name,salary,commission_pct
FROM employees
WHERE NOT commission_pct <=> NULL;

# 2.2. LEAST() \ GREATEST
SELECT LEAST('g','b','t','m'), GREATEST('g','b','t','m')
FROM DUAL;

SELECT LEAST(first_name,last_name), LEAST(LENGTH(first_name), LENGTH(last_name))
FROM employees;

# 2.3. BETWEEN 条件下界1 AND 条件上界2 （查询条件1和条件2范围内的数据，包含边界）
# 查询工资在6000 到 8000的员工信息
SELECT employee_id,last_name,salary
FROM employees
WHERE salary between 6000 and 8000;
# WHERE salary >= 6000 && salary <= 8000;

# 交换6000 和 8000之后，查询不到数据
SELECT employee_id,last_name,salary
FROM employees
WHERE salary BETWEEN 8000 AND 6000;

# 查询工资不在6000到8000的员工信息
SELECT employee_id,last_name,salary
FROM employees
WHERE salary NOT BETWEEN 6000 AND 8000;
#where salary < 6000 or salary > 8000;

# 2.3. in (set)\ not in (set)
# 练习：查询部门为10,20,30部门的员工信息
SELECT last_name,salary,department_id
FROM employees
#where department_id = 10 or department_id = 20 or department_id = 30;
WHERE department_id IN (10,20,30);

# 练习：查询工资不是6000,7000,8000的员工信息
SELECT last_name,salary,department_id
FROM employees
WHERE salary NOT IN (6000,7000,8000);