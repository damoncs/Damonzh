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
- 使用Class类完成对象的实例化操作
- 可以通过Constructor；类调用有参构造方法完成对象的实例化操作

Class主要是反射的源头，不光可以取得对象所在的类的信息，也可以直接通过Class类的方法进行对象的实例化操作

正常情况下，使用关键字new为对象实例化，

####三、反射机制的深入研究
- 使用反射调用类中的指定方法
- 使用反射完成setter及getter方法的调用
- 使用反射直接操作类的属性
- 使用反射操作数组

1、反射调用类中的方法

<1>、通过Class类得到方法，返回一个Method类型对象。

````java
public Method getMethod(String name,
						Class<?>...parameterType)
		throws NoSushMethodException,
				SecurityException
~~~~

<2>、调用无参的方法
````java
public Object invoke(Object obj,
					Object... args)
			throws IllegalAccessException,
				...
~~~~

执行时还需要传递参数景区，而且需要实例化对象。

````java
Class<?> c1 = null ;
c1 = Class.forName("org.damonzh.demo.Person") ;	//实例化Class对象
Method met = c1.getMethod("sayChina");	//找到sayChina方法
met.invoke(c1.newInstance());	//调用方法
~~~~
上述省略了异常处理

![](https://github.com/damoncs/Damonzh/blob/master/images/GetMethod.png)

- 第二种情况：调用有参的方法

此时必须设置参数类型及其内容

````java
Method met = c1.getMethod("sayHello",String.class,int.classs);	//找到sayHello方法
String rv = null ;
rv = (String)met.invoke(c1.new Instance(),"zhangqq",21);
~~~~

2、反射调用类setter及getter方法
````java
import java.lang.reflect.Method ;
public class InvokeSetGetDemo{
	public static void main(String args[]){
		Class<?> c1 = null ;
		Object obj = null ;
		try{
			c1 = Class.forName("org.lxh.demo15.Person") ;	// 实例化Class对象
		}catch(Exception e){}
		try{
			obj = c1.newInstance() ;
		}catch(Exception e){}
		setter(obj,"name","李兴华",String.class) ;	// 调用setter方法
		setter(obj,"age",30,int.class) ;	// 调用setter方法
		System.out.print("姓名：") ;
		getter(obj,"name") ;
		System.out.print("年龄：") ;
		getter(obj,"age");
	}
	/**
		Object obj：要操作的对象
		String att：要操作的属性
		Object value：要设置的属性内容
		Class<?> type：要设置的属性类型
	*/
	public static void setter(Object obj,String att,Object value,Class<?> type){
		try{
			Method met = obj.getClass().getMethod("set"+initStr(att),type) ;	// 得到setter方法
			met.invoke(obj,value) ;	// 设置setter的内容
		}catch(Exception e){
			e.printStackTrace() ;
		}
	}
	public static void getter(Object obj,String att){
		try{
			Method met = obj.getClass().getMethod("get"+initStr(att)) ;	// 得到setter方法
			System.out.println(met.invoke(obj)) ;	// 调用getter取得内容
		}catch(Exception e){
			e.printStackTrace() ;
		}
	}
	public static String initStr(String old){	// 将单词的首字母大写
		String str = old.substring(0,1).toUpperCase() + old.substring(1) ;
		return str ;
	}
};
~~~~