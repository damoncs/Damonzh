###��ӡ��(PrintStream��Printwriter)
- ����IO�У���ӡ���������Ϣ������

- ��Ҫ�����ֽڴ�ӡ����PrintStream�����ַ���ӡ����PrintWriter��

- ���Դ�ӡ�κ��������ͣ����磺С�����������ַ���

####�Ƚ�
֮ǰ�ڴ�ӡ��Ϣʱ����Ҫʹ��OutputStream���������������ݵ��������鷳��String-->byte[],��ӡ�����Է���Ľ������

![](https://github.com/damoncs/Damonzh/blob/master/images/PrintStream.png)

���ж����˺ܶ�print��println��������System.out.println()һ�������Դ�ӡ�κε���������

���췽����

>public PrintStream(OutputStream out)-->ָ�����λ��

�˹��췽������OutputStream�����ࡣ

####��ӡ���ĺô�
��PintStream�ж���Ĺ��췽���п��Է���ֱ�ӽ�����OutputStream���ʵ��������Ӧ���Ƕ�OutputStream������˰�װ���Ա���ӷ���Ľ������������

![](https://github.com/damoncs/Damonzh/blob/master/images/PrintDemo01.png)

####��ʽ�����
��JDK1.5֮��Java�ж�PrintStream���������������˸�ʽ���������ʽ��ֱ��ʹ��printf()������ɲ�����

�ڸ�ʽ����ָ��������������ͣ�

![](https://github.com/damoncs/Damonzh/blob/master/images/PrintType.png)

�������c�����е������

####�ܽ�
1.PrintStream���Է��������������

2.���Ժ������л�����ʹ��PringStream��ɣ����㡣

3.PrintStream����װ�����ģʽʵ��
