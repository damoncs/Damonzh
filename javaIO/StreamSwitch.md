###�ֽڡ��ַ���ת��
��ҪѧϰOutputStreamWriter��InputStreamReader�������

����������Ҫ�����ֽ������ַ�����ת��������

	OutputStreamWriter����Writer�����࣬��������ַ�����Ϊ�ֽ���

	InputStreamReader����Reader�����࣬��������ֽ�����Ϊ�ַ���

####ת������
�������ļ�����Ϊ�����ڴ��е��ַ�������Ҫͨ��OutputStreamWriter��Ϊ�ֽ������ܱ������ļ�֮�У���ȡ��ʱ����Ҫ��OutStreamWriter��Ϊ�ֽ������ܱ������ļ�֮�У���ȡ��ʱ����Ҫ��������ֽ���ͨ��InputStreamReader��Ϊ�ַ�����

![](https://github.com/damoncs/Damonzh/blob/master/images/StreamSwitch.PNG)

####FileWrite��FileReader��˵��
��JDK�ĵ�������FileOutputStream��OutputStream��ֱ�����࣬FileInputStream��InputStream��ֱ�����ࡣ

����FileWriter��FileReader����Writer��Reader��ֱ�����࣬���Ƿֱ�̳���OutputStreamWriter��InputStreamReader��

���˵���˲������ֽ��������ַ���ʵ�������ն������ֽڵ���ʽ��������������ġ�

~~~~
	java.lang.Object
		->java.io.Writer
			->java.io.OutputStreamWriter
				->java.io.FileWriter
~~~~
FileWirter����Writer�����࣬����ת����������
~~~~
	java.lang.Object
		->java.io.Reader
			->java.io.InputStreamReader
				->java.io.FileReader
~~~~
FileReaderҲ����Reader�����࣬����ת����������

�ܽ�Ļ����ǣ������еĲ�������ʹ�ֽ�����Ҳ�������ַ��������ļ��б���ʼ�������ֽڵ���ʽ���档

###�ܽ�

1��������������ת���������

2��һ��Ҫ����������ն�ʵ���϶����ֽڵ���ʽ

3��FileWriter��FileReader��������Ķ��壬�м�ʹ����ת����
