####什么是JSTL
- JSTL是Java中的一个定制标记库集

####为什么使用JSTL
- 实现了jsp页面中的代码复用
- 书写jsp页面时，可读性更强

####JSTL的环境搭建
由于JSTL标签和Server及JSP页面有着比较严格的版本对应关系，版本对应不正确很容易抛出异常。

- 1、下载JSTL(http://archive.apache.org/dist/jakarta/taglibs/standard/binaries/)
- 2、引入jar包

####JSTL标签的四大分类及JSTL函数
- 核心标签：最常用、最重要的
- 格式化标签
>SQL标签

>XML标签

- JSTL函数

####EL表达式：JSTL的好帮手
1、EL表达式的格式

- 用美元符号‘$’定界，内容包括在花括号“{}”中。
即${表达式}

- “.”与“[]”运算符

- 不能共用的情况：
>包含特殊字符：user.first-name

>通过变量动态取值

####EL变量
JSP内置对象：Page、Request、Session、Application

EL名称：PageScope、~Scope、~~

####EL自动类型转换
- 如果要取得文本框的输入，需要做类型转换

####EL隐式对象

####EL运算符
运算符允许对数据和文字进行组合以及比较。

####常用核心标签库介绍
- 表达式控制标签：out、set、remove 、catch
- 流程控制标签：if 、choose 、when 、otherwise
- 循环标签：forEach 、 for 、Tokens
- URL操作标签：import 、utl 、redirct
