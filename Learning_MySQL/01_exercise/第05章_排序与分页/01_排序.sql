USE  atguigudb;

# 排序
# 如果没有使用排序操作，默认情况下查询返回的数据是按照添加数据的顺序显示的。
SELECT * FROM employees;

# 1. 基本使用
# 使用 ORDER BY 对查询到的数据进行排序操作。
# 升序：ASC (ascend)
# 降序：DESC (descend)

# 练习：按照salary从高到低的顺序显示员工信息
SELECT employee_id,last_name,salary
FROM employees
ORDER BY salary DESC;

# 练习：按照salary从低到高的顺序显示员工信息
SELECT employee_id,last_name,salary
FROM employees
ORDER BY salary ASC;
# ORDER BY salary; # 如果在ORDER BY 后没有显式指名排序的方式的话，则默认按照升序排列

# 2. 我们可以使用列的别名，进行排序
SELECT employee_id,salary,salary * 12 annual_sal
FROM employees
ORDER BY annual_sal;

# 3.列的别名只能在 ORDER BY 中使用，不能在WHERE中使用。
#如下操作报错！
SELECT employee_id,salary,salary * 12 annual_sal
FROM employees;
# WHERE annual_sal > 81600;
/*
相关 SQL 命令的执⾏顺序如下：
1. FROM：指定要查询的表，以及其它的数据源，如⼦查询或视图；
2. ON：在连接操作中，指定连接条件；
3. JOIN：将两个或多个表或视图进⾏连接，以获得相关联的数据；
4. WHERE：指定查询的条件，⽤于过滤数据；
5. GROUP BY：根据指定的列或表达式将查询结果分组；
6. AVG, SUM...：执⾏聚合函数，如求平均值、求和等；
7. HAVING：在聚合操作后，对分组结果进⾏筛选；
8. SELECT：选择要返回的列，可以包括计算列和聚合函数的结果；
9. DISTINCT：去除重复的⾏，只返回唯⼀的结果；
10. ORDER BY：根据指定的列或表达式对结果进⾏排序；
11. LIMIT：限制返回的结果集数量，可以进⾏分⻚操作。
*/

# 4. 强调格式：WHERE 需要声明在FROM后，ORDER BY之前。
SELECT employee_id,salary
FROM employees
WHERE department_id IN (50,60,70)
ORDER BY department_id DESC;

# 5. 二级排序
#练习：显示员工信息，按照department_id的降序排列，salary的升序排列
SELECT employee_id,salary,department_id
FROM employees
ORDER BY department_id DESC, salary ASC;

