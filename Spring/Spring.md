###Springѧϰ

1.Spring IoC����������־�������У�����ᱨ��

2.ѧϰSpring�������Ϥ����֪ʶ�㣺

Java���䣨BeanFactory��Bean�Ĺ���������÷��䣩

[Java����](/Java/Proxy.md)����SpringAOP˼���ԭ��

Xml������Spring Bean�����ļ�XML��

####����ģʽ
�������ã�

ͨ���������ƶԶ���ķ��ʣ�

������ϸ���Ʒ���ĳ������ķ������ڵ����������ǰ��ǰ�ô������÷����������ô���

####AOP
#####�����ؼ�����
- �����(Pointcut)
- ֪ͨ(Advice)
- Advisor

Join Point�����ӵ㣩:�ǳ���������ĳ���׶ε㣬��ĳ���������á��׳��쳣��

��Pointcut�����ӵ�ļ��ϡ����ǳ�������Ҫע��Advice��λ�õļ��ϡ�ָ��Advice��ʲô�����²��ܴ�����

org.springframework.aop.Pointcut�ӿ�����ָ��֪ͨ���ض�����ͷ�����

````java
public interface Pointcut{
	//������������޶��ڸ�����Ŀ������
	ClassFilter getClassFilter();
	//�����ж�������Ƿ�ƥ��Ŀ��������ķ���
	MethodMatcher getMethodMatcher();
	
	Pointcut TRUE = TruePointcut.INSTANCE ;
}
~~~~
Advice��֪ͨ����ǰ����ȡ������־��Ϣ�Ĵ������һ��Advice����ʾҪ��joinPoint������δ��롣

Advisor����Pointcut��Advice������������������Pointcut��Advice���ǽ�Adviceע�뵽������Pointcutλ�õĴ��롣


####������ʽ���
- ".":����ƥ���κ�һ���ַ�
- "[]":ֻ��[]��ָ�����ַ�����ƥ�䡣����"g[abc]f",����ƥ��"gaf"��"gbf"��
- "*"����ʾƥ���������������Σ�
- "?"������ƥ��0��1�Ρ�
- "\"��������ʽ���ӷ�
