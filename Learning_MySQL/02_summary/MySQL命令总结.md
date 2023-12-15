# 1. `SHOW ENGINES`

* **作用**

  查看当前服务器支持的存储引擎

* **输出**

  ![image-20231215111737566](https://dawn1314.oss-cn-beijing.aliyuncs.com/typoraimg/202312151117634.png)

  * `Support`列表：表示该存储引擎是否可用
  * `DEFAULT`：代表当前服务器程序的默认存储引擎
  * `Comment`列：存储引擎的描述
  * `Transactions`列：代表该存储引擎是否支持事务处理
  * `XA`列：代表该存储引擎是否支持分布式事务
  * `Savepoints` 列：代表该存储引擎是否支持事务的部分回滚