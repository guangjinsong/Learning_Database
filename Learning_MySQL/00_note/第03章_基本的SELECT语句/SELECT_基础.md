# 1. 简介

* SQL（Structured Query Language，结构化查询语言）是使用关系模型的数据库应用语言， 与数据直接打交道 ，由 IBM 上世纪70年代开发出来。后由美国国家标准局（ANSI）开始着手制定SQL标准，先后有 SQL-86 ， SQL-89 ， SQL-92 ， SQL-99 等标准

* SQL 有两个重要的标准，分别是 SQL92 和 SQL99，它们分别代表了 92 年和 99 年颁布的 SQL 标准，我们今天使用的 SQL 语言依然遵循这些标准

* 不同的数据库生产厂商都支持SQL语句，但都有特有内容

  ![image-20231216112241104](https://dawn1314.oss-cn-beijing.aliyuncs.com/typoraimg/202312161122166.png)

# 2. 分类

1. **DDL（Data Definition Languages、数据定义语言）**
   * 这些语句定义了不同的数据库、表、视图、索引等数据库对象，还可以用来创建、删除、修改数据库和数据表的结构
   * 主要的语句关键字包括 CREATE 、 DROP 、 ALTER 等
2. **DML（Data Manipulation Language、数据操作语言）**
   * 用于添加、删除、更新和查询数据库记录，并检查数据完整性
   * 主要的语句关键字包括 INSERT（增） 、 DELETE（删） 、 SELECT（查）、UPDATE （改） 等
3. **DCL（Data Control Language、数据控制语言）**
   * 用于定义数据库、表、字段、用户的访问权限和安全级别
   * 主要的语句关键字包括 GRANT 、 REVOKE 、 COMMIT 、 ROLLBACK 、 SAVEPOINT 等。

> 注：
>
> 因为查询语句使用的非常的频繁，所以很多人把查询语句单拎出来一类：DQL（数据查询语言）。还有单独将 COMMIT 、 ROLLBACK 取出来称为TCL （Transaction Control Language，事务控制语言）。