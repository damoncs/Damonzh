####Ajax
�첽��JavaScript��xml

��һ�����ڴ������ٶ�̬��ҳ�ļ�����

ͨ���ں�̨������������������ݽ�����Ajax����ʹ��ҳʵ���첽���¡�

####Ajax����ԭ��
>����XMLHttpRequest����

>XMLHttpRequest��AJAX�Ļ���

XMLHttpRequest�����ں�̨��������������ݡ�����ζ�ſ����ڲ����¼���������ҳ������£�
����ҳ��ĳ�����ֽ���ˢ��

####���� XMLHttpRequest ����
�����ִ��������IE7+��Firefox��Chrome��Safari �Լ� Opera�����ڽ� XMLHttpRequest ����

���� XMLHttpRequest ������﷨��

>variable=new XMLHttpRequest();

�ϰ汾�� Internet Explorer ��IE5 �� IE6��ʹ�� ActiveX ����

>variable=new ActiveXObject("Microsoft.XMLHTTP");

####���������������
ʹ��open()��send()����
````xml
xmlhttp.open("GET","test1.txt",true);
xmlhttp.send();
~~~~

####GET ���� POST��
- �� POST ��ȣ�GET ����Ҳ���죬�����ڴ󲿷�����¶����á�
- Ȼ��������������У���ʹ�� POST ����
- �޷�ʹ�û����ļ������·������ϵ��ļ������ݿ⣩
- ����������ʹ������ݣ�POST û�����������ƣ�
- ���Ͱ���δ֪�ַ����û�����ʱ��POST �� GET ���ȶ�Ҳ���ɿ�

####Async = true
- ��ʹ�� async=true ʱ����涨����Ӧ���� onreadystatechange �¼��еľ���״̬ʱִ�еĺ�����
````java
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","test1.txt",true);
xmlhttp.send();
~~~~

####Async = false
- ����ʹ�� async=false���뽫 open() �����еĵ�����������Ϊ false��
- xmlhttp.open("GET","test1.txt",false);
- ���ǲ��Ƽ�ʹ�� async=false�����Ƕ���һЩС�͵�����Ҳ�ǿ��Եġ�
- ���ס��JavaScript ��ȵ���������Ӧ�����ż���ִ�С������������æ������Ӧ�ó��������ֹͣ��
- ע�ͣ�����ʹ�� async=false ʱ���벻Ҫ��д onreadystatechange ���� - �Ѵ���ŵ� send() �����漴�ɣ�
- xmlhttp.open("GET","test1.txt",false);
- xmlhttp.send();
- document.getElementById("myDiv").innerHTML=xmlhttp.responseText;

