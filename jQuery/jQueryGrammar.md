###jQuery�﷨
ͨ��jQuery������ѡȡ����ѯ��query��HTMLԪ�أ���������ִ�С���������actions����

####�﷨
jQuery�﷨��ΪHTMLԪ�ص�ѡȡ���Ƶģ����Զ�Ԫ��ִ��ĳЩ����

�����﷨:$(selector).action()
- ��Ԫ���Ŷ���jQuery
- ѡ���(selector)"��ѯ"��"����"HTMLԪ��
- jQuery��action()ִ�ж�Ԫ�صĲ���

####ʵ��
$(this).hide()

>��ʾjQuery.hide()���������ص�ǰ��HTMLԪ��

$("#test").hide()

>��ʾjQuery��hide()����������id="test"��Ԫ��

$("p").hide()

>��������<p>��Ԫ�ء�

$(".test").hide()

>��������calss="test"��Ԫ�ء�

####�ĵ���������

````javascript
$(document).ready(function(){
	--- jQuery functions go here ---
});
~~~~
���е�jQuery������λ��һ��document ready�����С�

����Ϊ�˷�ֹ�ĵ�����ɼ��أ�������֮ǰ����jQuery���롣

������ĵ�û����ȫ����֮ǰ�����к�������������ʧ�ܡ�

����:

>��ͼ����һ�������ڵ�Ԫ��

>���δ��ȫ���ص�ͼƬ�Ĵ�С