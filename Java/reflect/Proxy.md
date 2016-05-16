代码一般分为业务逻辑代码和其他一些类似日志信息的


静态代理，一个代理类只能为一个接口服务，那么如果有很多接口，就要有多个代理类

要实现代理类，必须实现固定的接口，而动态代理，提供了只需编写实现特定接口的代理类。

AOP是一种思想，它和具体的实现技术无关。任何一种符合AOP思想的技术实现，都可以看做是AOP的实现。

Java提供了代理机制，可以很容因的实现AOP思想。


####从一个日志输出例子分析Java的代理机制
1、通用的日志输出方法

业务逻辑代码和非业务逻辑代码混合在一起，代码难以维护。程序耦合度高。

2、面向接编程口实现

业务代码和非业务代码分离，但是代理类必须实现特定的接口。

3、动态代理

````java
public class LogProxy implements InvocationHandler{
	private Object obj ;	
	public Object bind(Object obj){	//绑定代理对象
		this.obj = obj ;
		return Proxy.new ProxyInstance(obj.getClass().getClassLoader(),obj.getClass().getInyerface(),this);
	}
	//方法调用
	public Object invoke(Object proxy,Method met,Object args[])throws Throwalbe{
		Object res = null ;
		try{
			logger.log("开始审核数据");
			res = met.invoke(obj,args);
			logger.log("审核数据结束");
		}catch(Exception e){
			logger.log(e.toString());
		}
		return res ;
	}
}
~~~~

####三种方法总结
第一种：需要在每个类中都增加对输出日志信息的代码；

第二种：实现了业务逻辑代码与输出日志信息代码的分离，但还是必须依赖于固定的接口

第三种：真正实现了对输出日志信息代码的重用，并且不依赖于固定的接口实现

从第三种方式看出Java代理机制的强大，而Spring的AOP正式建立在Java动态代理机制的基础上。
