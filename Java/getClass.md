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