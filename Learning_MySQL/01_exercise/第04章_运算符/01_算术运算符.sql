USE atguigudb;

# 1. 算术运算符 + - * / div % mod
SELECT 100, 100 + 0, 100 - 0, 100 + 50, 100 + 50 * 30, 100 + 35.5, 100 - 35.5
FROM DUAL;
SELECT  100 + '1'; # 在SQL中，+没有连接的作用，就表示加法运算。此时，会将字符串转换为数值（隐式转换）
SELECT 100 + 'a'; # 此时将'a'看做0处理, 非数字类型的字符串按照0来进行处理
SELECT 100 + NULL;  # null值参与运算，结果为null

# * / DIV
SELECT 100, 100 * 1, 100 * 1.0, 100 / 1.0, 100 / 2, 100 + 2 * 5 / 2,100 / 3;
SELECT 100 DIV 0;  # 分母如果为0，则结果为null

# 取模运算： % mod
SELECT 12 % 3,12 % 5, 12 MOD -5,-12 % 5,-12 % -5; # 取模运算结果的符号与被模数一致

# 练习: 查询员工id为偶数的员工信息
SELECT employee_id, last_name, salary
FROM employees
WHERE (employee_id % 2) = 0;