###Java反射机制
####一、认识class类
- 掌握Object类中的getClass()方法
- 认识Java反射机制

正常情况，必须知道一个类的完整路径之后才能实例化对象

但在Java中可以通过一个对象来找到其所在的类的信息。使用class类实现。

#####Object类的支持
在Object类中定义了以下的方法，此方法也被所有子类继承：
````java
	public final Class getClass();
~~~~

以上方法的返回值类型是一个Class类，实际上此类时Java反射的源头

从反射程序的运行结果来看，反射就是可以通过对象反射求出类的名称。

![](https://github.com/damoncs/Damonzh/blob/master/images/getclass.png)

#####Class类
Class本身表示一个类的本身，通过class可以完整的得到一个类中的完整结构，包括此类中的方法定义，属性定义等。

![](https://github.com/damoncs/Damonzh/blob/master/images/Class.png)

此类使用了单例模式，构造方法被私有化了，在jdk文档中没有发现任何的构造方法。

#####实例化Class类对象
- 第一种：通过forName()方法
- 第二种：类.class
- 第三种：对象.getClass()

````java
class X{
	
}
public class GetClassDemo02{
	public static void main(String args[]){
		Class<?> c1 = null ;	//指定泛型
		Class<?> c2 = null ;
		Class<?> c3 = null ;
		try{
			c1 = Class.forName("X");
		}catch(ClassNotFoundException e){}
		c2 = new X().getClass();
		c3 = X.class ;
		System.out.println("类名称："+c1.getName());
		System.out.println("类名称："+c2.getName());
		System.out.println("类名称："+c3.getName());
	}
}
~~~~

#####小结
1、Class类的作用：反射机制的源头

2、三种class类的实例化方式

3、所谓反射就是通过对象得到所在类的信息，通过Class类实现。

####二、Class类的作用