USE atguigudb;

# 最基本的SELECT语句 SELECT 字段1, 字段2... FROM 表名
# 因为基本的查询语句, 得有FROM和表, 但是像这种"1+1"又
# 不需要表, 所有有个伪表(dual), 但可以省略不写, 即下面的两条
# 查询语句作用一样
SELECT 1 + 1, 3 + 2;
SELECT 1 + 1, 3 + 2 FROM DUAL;

# *: 表中所有的字段
SELECT *
FROM employees;


# 列表的别名
# 第一种方式: 使用AS关键字, alias, 别名, 可以省略
# 第二种方式: 可以使用""引起来, 不要使用''
SELECT employee_id, last_name "lname", department_id AS dept_id
FROM employees;

# DISTINCT: 去除重复行
# 如果有多个字段, DISTINCT一般是放在所有字段的前面
# 因为DISTINCT是将所有的字段当成一个整体去重, 而不是
# 单独针对某一个字段去重
SELECT DISTINCT salary, department_id
FROM employees;

# 错误写法
# SELECT salary, DISTINCT department_id
# FROM employees;

# null
# null不等同于0, 'null'
# null表示的意思是不知道
# 空值参与运算的结果一定也为空
SELECT employee_id, salary "月工资", salary * (1 + commission_pct) * 12 "年工资", commission_pct
FROM employees;

# ``, 着重号
# 如果字段名或者表名与关键字和保留字一样,
# 那么就需要将字段名和表名添加``
SELECT *
FROM `order`;

# 查询常数
SELECT 'sgj', employee_id, last_name
FROM employees;

# 显示表结构
DESC employees;


# where: 过滤数据
# 声明要在from后面
# 1. 查询90号部门的员工信息
SELECT *
FROM employees
WHERE department_id = 90;

# 2. 查询last_name为King的员工
# 在Windows下不区分大小写一般是指出了""或''之外的内容
# 但是Windows下的MySQL对""或''之内的内容也不区分大小写,
# 但是Oracle区分, Oracle下,字符串只能用''表示, 不能用""
# 表示
SELECT *
FROM employees
WHERE last_name = 'king';

