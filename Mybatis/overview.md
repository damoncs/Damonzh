# 简介
### 什么是Mybatis？
MyBatis 是支持普通 SQL 查询，存储过程和高级映射的优秀持久层框架。MyBatis 消除了几乎所有的 JDBC 代码和参数的手工设置以及结果集的检索。MyBatis 使用简单的 XML 或注解用于配置和原始映射，将接口和 Java 的 POJOs（Plan Old Java Objects，普通的 Java 对象）映射成数据库中的记录。

### ORM工具的思想
无论是用过的 hibernate,Mybatis,你都可以法相他们有一个共同点：

1. 从配置文件(通常是 XML 配置文件中)得到 sessionfactory.
2. 由 sessionfactory 产生 session
3. 在 session 中完成对数据的增删改查和事务提交等.
4. 在用完之后关闭 session 。
5. 在 Java 对象和 数据库之间有做 mapping 的配置文件，也通常是 xml 文件。

例如：
```java
public class Test {
	private static SqlSessionFactory sqlSessionFactory;
	private static Reader reader;

	static {
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			User user = (User) session.selectOne(
					"com.quanquan.mybatis.models.UserMapper.selectUserByID", 1);
			System.out.println(user.getUserAddress());
			System.out.println(user.getUserName());
		} finally {
			session.close();
		}
	}
}
```
这里读取xml配置文件时代码如下：有心去可以深入学习下，与类加载相关
通过xml文件获取到输入流-InputStream
```java
InputStream getResourceAsStream(String resource, ClassLoader classLoader[]) {
	ClassLoader arr$[] = classLoader;
	int len$ = arr$.length;
	for (int i$ = 0; i$ < len$; i$++) {
		ClassLoader cl = arr$[i$];
		if (null == cl)
			continue;
		InputStream returnValue = cl.getResourceAsStream(resource);
		if (null == returnValue)
			returnValue = cl.getResourceAsStream((new StringBuilder())
					.append("/").append(resource).toString());
		if (null != returnValue)
			return returnValue;
	}
	
	return null;
}
```
