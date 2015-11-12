###Java�������
####һ����ʶclass��
- ����Object���е�getClass()����
- ��ʶJava�������

�������������֪��һ���������·��֮�����ʵ��������

����Java�п���ͨ��һ���������ҵ������ڵ������Ϣ��ʹ��class��ʵ�֡�

#####Object���֧��
��Object���ж��������µķ������˷���Ҳ����������̳У�
````java
	public final Class getClass();
~~~~

���Ϸ����ķ���ֵ������һ��Class�࣬ʵ���ϴ���ʱJava�����Դͷ

�ӷ����������н��������������ǿ���ͨ�����������������ơ�

![](https://github.com/damoncs/Damonzh/blob/master/images/getclass.png)

#####Class��
Class�����ʾһ����ı���ͨ��class���������ĵõ�һ�����е������ṹ�����������еķ������壬���Զ���ȡ�

![](https://github.com/damoncs/Damonzh/blob/master/images/Class.png)

����ʹ���˵���ģʽ�����췽����˽�л��ˣ���jdk�ĵ���û�з����κεĹ��췽����

#####ʵ����Class�����
- ��һ�֣�ͨ��forName()����
- �ڶ��֣���.class
- �����֣�����.getClass()

````java
class X{
	
}
public class GetClassDemo02{
	public static void main(String args[]){
		Class<?> c1 = null ;	//ָ������
		Class<?> c2 = null ;
		Class<?> c3 = null ;
		try{
			c1 = Class.forName("X");
		}catch(ClassNotFoundException e){}
		c2 = new X().getClass();
		c3 = X.class ;
		System.out.println("�����ƣ�"+c1.getName());
		System.out.println("�����ƣ�"+c2.getName());
		System.out.println("�����ƣ�"+c3.getName());
	}
}
~~~~

#####С��
1��Class������ã�������Ƶ�Դͷ

2������class���ʵ������ʽ

3����ν�������ͨ������õ����������Ϣ��ͨ��Class��ʵ�֡�

####����Class�������
- ʹ��Class����ɶ����ʵ��������
- ����ͨ��Constructor��������вι��췽����ɶ����ʵ��������

Class��Ҫ�Ƿ����Դͷ���������ȡ�ö������ڵ������Ϣ��Ҳ����ֱ��ͨ��Class��ķ������ж����ʵ��������

��������£�ʹ�ùؼ���newΪ����ʵ������

####����������Ƶ������о�
- ʹ�÷���������е�ָ������
- ʹ�÷������setter��getter�����ĵ���
- ʹ�÷���ֱ�Ӳ����������
- ʹ�÷����������

1������������еķ���

<1>��ͨ��Class��õ�����������һ��Method���Ͷ���

````java
public Method getMethod(String name,
						Class<?>...parameterType)
		throws NoSushMethodException,
				SecurityException
~~~~

<2>�������޲εķ���
````java
public Object invoke(Object obj,
					Object... args)
			throws IllegalAccessException,
				...
~~~~

ִ��ʱ����Ҫ���ݲ���������������Ҫʵ��������

````java
Class<?> c1 = null ;
c1 = Class.forName("org.damonzh.demo.Person") ;	//ʵ����Class����
Method met = c1.getMethod("sayChina");	//�ҵ�sayChina����
met.invoke(c1.newInstance());	//���÷���
~~~~
����ʡ�����쳣����

![](https://github.com/damoncs/Damonzh/blob/master/images/GetMethod.png)

- �ڶ�������������вεķ���

��ʱ�������ò������ͼ�������

````java
Method met = c1.getMethod("sayHello",String.class,int.classs);	//�ҵ�sayHello����
String rv = null ;
rv = (String)met.invoke(c1.new Instance(),"zhangqq",21);
~~~~

2�����������setter��getter����
````java
import java.lang.reflect.Method ;
public class InvokeSetGetDemo{
	public static void main(String args[]){
		Class<?> c1 = null ;
		Object obj = null ;
		try{
			c1 = Class.forName("org.lxh.demo15.Person") ;	// ʵ����Class����
		}catch(Exception e){}
		try{
			obj = c1.newInstance() ;
		}catch(Exception e){}
		setter(obj,"name","���˻�",String.class) ;	// ����setter����
		setter(obj,"age",30,int.class) ;	// ����setter����
		System.out.print("������") ;
		getter(obj,"name") ;
		System.out.print("���䣺") ;
		getter(obj,"age");
	}
	/**
		Object obj��Ҫ�����Ķ���
		String att��Ҫ����������
		Object value��Ҫ���õ���������
		Class<?> type��Ҫ���õ���������
	*/
	public static void setter(Object obj,String att,Object value,Class<?> type){
		try{
			Method met = obj.getClass().getMethod("set"+initStr(att),type) ;	// �õ�setter����
			met.invoke(obj,value) ;	// ����setter������
		}catch(Exception e){
			e.printStackTrace() ;
		}
	}
	public static void getter(Object obj,String att){
		try{
			Method met = obj.getClass().getMethod("get"+initStr(att)) ;	// �õ�setter����
			System.out.println(met.invoke(obj)) ;	// ����getterȡ������
		}catch(Exception e){
			e.printStackTrace() ;
		}
	}
	public static String initStr(String old){	// �����ʵ�����ĸ��д
		String str = old.substring(0,1).toUpperCase() + old.substring(1) ;
		return str ;
	}
};
~~~~