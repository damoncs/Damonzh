###MySQL数据类型
通常在一个页内可以存放尽可能多的行，那么数据库的性能就越好，所以选择一个正确的数据类型至关重要。
<p>另一方面，在创建表时，选择错误的数据类型，不仅影响数据库访问的性能，后期维护的难度也会更大。
<p>所以选择合理的数据类型对引用程序至关重要。
####类型属性
>UNSIGNED

>ZEROFIL

UNSIGED属性在某些地方可能带来意想不到的效果，所以不建议使用。

ZEROFIL属性主要用于补齐输出。（对于整形数）

####二、日期和时间类型

#####2.4 与日期相关的函数

1.NOW、CURRENT_TIMESRAMP和SYSDATE

这些都是返回当前的系统时间，不同的是：
<p>
- CURRENT_TIMESTAMP是NOW的同义词，两者表示相同
- SYSDATE函数返回的是执行到当前函数时的时间，NOW返回的是执行SQL语句时的时间

2.时间加减函数

DATE_ADD或者DATE_SUB函数：DATE_ADD(date,INTERVAL expr unit)

例如：
~~~~sql
SELECT NOW() AS now,
DATE_ADD(now(),INTERVAL 1 DAY) AS tomorrow \G;
````
返回结果：

****************************1. row*************************
<p>now:2015-10-31 19:51:25
<p>tomorrow:2015-11-01 19:51:25

其中expr值可以为负值。加减类型还可以是SECOND、HOUR、WEEK、MONTH等类型。

3.DATE_FORMAT函数

主要作用是按用户需求格式化打印日期。
<p>但这里有一个注意的是；下列的sql查询时错误使用此函数的结果，产生效率低下的问题
<p>SELECT *FROM table WHERE DATE_FORMAT(date,'%Y%m%d')='xxxx-xx-xx';

一般来说表中都会有一个对日期类型的索引，如果使用上述语句，优化器就不会使用索引。因此执行效率很低。

####三、数字类型
- 整形
- 浮点型
- 高精度类型
- 位类型

####四、字符类型
- 字符集
- 排序规则
- CHAR和VARCHAR
- BINARY和VARBINARY
- BLOB和TEXT
- ENUM和SET类型