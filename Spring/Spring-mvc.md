###Spring学习

1.Spring IoC必须配置日志才能运行，否则会报错。

2.学习Spring，最好熟悉以下知识点：

Java反射（BeanFactory对Bean的管理大量是用反射）

[Java代理](/Java/Proxy.md)（是SpringAOP思想的原理）

Xml解析（Spring Bean管理文件XML）

####代理模式
核心作用：

通过代理，控制对对象的访问！

可以详细控制访问某个对象的方法，在调用这个方法前做前置处理，调用方法后做后置处理。

####AOP
#####三个关键概念
- 切入点(Pointcut)
- 通知(Advice)
- Advisor

Join Point（连接点）:是程序运行中某个阶段点，如某个方法调用、抛出异常。

而Pointcut是连接点的集合。他是程序中需要注入Advice的位置的集合。指明Advice在什么条件下才能触发。

org.springframework.aop.Pointcut接口用来指定通知到特定的类和方法。

````java
public interface Pointcut{
	//用来将切入点限定在给定的目标类中
	ClassFilter getClassFilter();
	//用来判断切入点是否匹配目标类给定的方法
	MethodMatcher getMethodMatcher();
	
	Pointcut TRUE = TruePointcut.INSTANCE ;
}
~~~~
Advice（通知）：前面提取出来日志信息的代码就是一个Advice，表示要在joinPoint加入这段代码。

Advisor：是Pointcut和Advice的配置器。它包括了Pointcut和Advice。是将Advice注入到程序中Pointcut位置的代码。


####正则表达式简介
- ".":可以匹配任何一个字符
- "[]":只有[]里指定的字符才能匹配。比如"g[abc]f",可以匹配"gaf"、"gbf"。
- "*"：表示匹配次数，可以任意次，
- "?"：可以匹配0或1次。
- "\"：正则表达式连接符
