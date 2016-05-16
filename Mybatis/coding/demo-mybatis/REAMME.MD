下面对这几个配置文件解释下：

1. Configuration.xml 是 mybatis 用来建立 sessionFactory 用的，里面主要包含了数据库连接相关东西，
	还有 java 类所对应的别名，比如<typeAlias alias="User" type="com.yihaomen.mybatis.model.User"/> 
	这个别名非常重要，你在 具体的类的映射中，比如 User.xml 中 resultType 就是对应这里的。要保持一致，当然这里的 resultType 
	还有另外单独的定义方式，后面再说。
2. Configuration.xml 里面 的<mapper resource="com/yihaomen/mybatis/model/User.xml"/>是
	包含要映射的类的 xml 配置文件。
3. 在 User.xml 文件里面 主要是定义各种 SQL 语句，以及这些语句的参数，以及要返回的类型等。

遇到的问题：

1. mybatis或者其他地方依赖了log4j。所以必须添加log4j的包，否则项目会报错。（最好能全部配置好日志功能）