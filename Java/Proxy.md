����һ���Ϊҵ���߼����������һЩ������־��Ϣ��


��̬����һ��������ֻ��Ϊһ���ӿڷ�����ô����кܶ�ӿڣ���Ҫ�ж��������

Ҫʵ�ִ����࣬����ʵ�̶ֹ��Ľӿڣ�����̬�����ṩ��ֻ���дʵ���ض��ӿڵĴ����ࡣ

AOP��һ��˼�룬���;����ʵ�ּ����޹ء��κ�һ�ַ���AOP˼��ļ���ʵ�֣������Կ�����AOP��ʵ�֡�

Java�ṩ�˴�����ƣ����Ժ������ʵ��AOP˼�롣


####��һ����־������ӷ���Java�Ĵ������
1��ͨ�õ���־�������

ҵ���߼�����ͷ�ҵ���߼���������һ�𣬴�������ά����������϶ȸߡ�

2������ӱ�̿�ʵ��

ҵ�����ͷ�ҵ�������룬���Ǵ��������ʵ���ض��Ľӿڡ�

3����̬����

````java
public class LogProxy implements InvocationHandler{
	private Object obj ;	
	public Object bind(Object obj){	//�󶨴������
		this.obj = obj ;
		return Proxy.new ProxyInstance(obj.getClass().getClassLoader(),obj.getClass().getInyerface(),this);
	}
	//��������
	public Object invoke(Object proxy,Method met,Object args[])throws Throwalbe{
		Object res = null ;
		try{
			logger.log("��ʼ�������");
			res = met.invoke(obj,args);
			logger.log("������ݽ���");
		}catch(Exception e){
			logger.log(e.toString());
		}
		return res ;
	}
}
~~~~

####���ַ����ܽ�
��һ�֣���Ҫ��ÿ�����ж����Ӷ������־��Ϣ�Ĵ��룻

�ڶ��֣�ʵ����ҵ���߼������������־��Ϣ����ķ��룬�����Ǳ��������ڹ̶��Ľӿ�

�����֣�����ʵ���˶������־��Ϣ��������ã����Ҳ������ڹ̶��Ľӿ�ʵ��

�ӵ����ַ�ʽ����Java������Ƶ�ǿ�󣬶�Spring��AOP��ʽ������Java��̬������ƵĻ����ϡ�
