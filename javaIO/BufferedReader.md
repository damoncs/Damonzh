###BufferedReader���ʹ��
- BufferedReader�����ڽ������ⳤ�ȵ����ݣ����ҿ��Ա�������Ĳ���
- ���ڻ�������������Ļ�����ʽ

####����
Buffer����ʾ����������StringBufferһ���������������ݿ��Ը��ģ��������Ч��

���Ҫ��������ⳤ�ȵ����ݣ����ұ�������������Ϳ���ʹ��BufferedReader��

��Ϊ��������Ҳ���ܴ������ģ�����ʹ���ַ�����ɡ�

![](https://github.com/damoncs/Damonzh/blob/master/images/BufferedReader.PNG)

System.in�����ʾ����InputStream(�ֽ���)������Ҫ����ܵ���һ���ַ�������Ҫ���ֽ�����Ϊ�ַ����ſ��ԡ���InputStreamReader��

![](https://github.com/damoncs/Damonzh/blob/master/images/BufferedReaderIns.png)

��ʱ���Ϳ��Ը��������������ݵı�׼��ʽ��

````java
import java.io.* ;
public class BufferedReaderDemo01{
	public static void main(String args[]){
		BufferedReader buf = null ;		// ��������
		buf = new BufferedReader(new InputStreamReader(System.in)) ;	// ���ֽ�����Ϊ�ַ���
		String str = null ;	// ������������
		System.out.print("���������ݣ�") ;
		try{
			str = buf.readLine() ;	// ��ȡһ������
		}catch(IOException e){
			e.printStackTrace() ;	// �����Ϣ
		}
		System.out.println("���������Ϊ��" + str) ;
	}
};
~~~~

####�ܽ�
1��BufferedReader���������ʲô��

2��ʹ��BufferedReader�����������ݡ�
