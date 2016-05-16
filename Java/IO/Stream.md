###ѧϰĿ��
- �������ĸ���
- �����ֽ������ַ���������
- �����ļ��ı�׼��������
- �����ֽ����ַ�����������

###��������
####��
- �����У����е����ݶ��������ķ�ʽ���д����

- ������Ҫ����ʱ��ʹ����������ȡ���ݣ�������Ҫ�����ݱ��棬��ʹ����������

- ������������������������ʽ����ģ����б����ʵ����ȫ�����ֽ����ļ���

####�ֽ������ַ���
��Ҫ���ĸ���

>�ֽ�����OutputStream��InputStream

>�ַ�����Writer��Reader

ע�������ĸ���ȫ���ǳ����࣬��ʹ��ʱʹ�����Ӧ������

####�ļ���������
��Java��IO����Ҳ������Ӧ����ģ����ļ�����Ϊ����

 - A��ʹ��File��һ���ļ�
 - B��ͨ���ֽ������ַ��������ָ࣬�������λ��
 - C�����ж�д����
 - D���ر�����/���

IO������Դ������������Դ��������������йرգ�������п��ܳ���δ֪����

####һ���ֽ���
��Ҫ�ǲ���byte�������ݣ���byte����Ϊ׼���������ǣ�OutputStream��InputStream

Byte���ֽڣ�����ʹ���ֽ������������е����ݻ���������ʹ���ֽ������ʾ

1���ֽ��������OutputStream
io���ֽ������������࣬����Ķ������£�
````java
    public abstract class OutputStream extends Object implements
		Closeable,Flushable
~~~~
Closeable:��ʾ���ԹرյĲ�������Ϊ�������е����϶�Ҫ�ر�
Flushable:��ʾˢ�£�����ڴ��е�����

OutputStream��ĳ��ò���������

![](https://github.com/damoncs/Damonzh/blob/master/images/OutputStream.PNG)

���ļ���׷���µ�����

֮ǰ�Ĳ�����������д���ļ�֮�󣬶��Ḳ���ļ��е��������ݣ���ô��ʱ����ͨ��FileOutpurStream���ļ���׷������

ʹ�����¹��췽����
````java
	public FileOutputStream(File file,boolean append)throws FileNotFoundException
~~~~

�ڹ��췽���У���append��Ϊtrue����ʵ�����ݵ�׷��
2���ֽ���������InputStream

��OutputStream��ͬ��ԭ��

InputStream��ĳ��ò���������

![](https://github.com/damoncs/Damonzh/blob/master/images/InputStream.PNG)

ʹ��������ʱ���ڲ�֪�ļ���Сʱ������ʹ�����£�
````java
	int len = 0 ;
	int temp = 0 ;
	while((temp = input.read())!=-1){
		//��ʾ�������ݣ��ļ�û����
		b[len] = (byte)temp ;
		len ++ ;
	}
~~~~

####�����ַ���
���ֽ�����Ҫ��������ǲ��������Ϊ�ַ�char

Writer��ĳ��ò���������

![](https://github.com/damoncs/Damonzh/blob/master/images/Writer.PNG)

Reader��ĳ��ò���������

![](https://github.com/damoncs/Damonzh/blob/master/images/Reader.PNG)

####�ֽ������ַ���������׷

�ֽ����ڲ�����ʱ���ǲ����õ���������һ���ڴ棩�ģ������ļ�����ֱ�Ӳ����ģ����ַ����ڲ�����ʱ����ʹ�õ��˻�����

![](https://github.com/damoncs/Damonzh/blob/master/images/diffeFormStream.PNG)

��֤��������ȡ�ô��ڣ�ʹ�������������ļ�ʱ������󣬲�Ҫ�ر�����out.close()����֮���ֽ�����������˱��浽�ļ����ֽ���ȴΪ���棬

˵���������˻�����֮�У������ִ�йرյ�ʱ���ǿ���Ե�ˢ�»����������԰����������

���ڼ���û�йرգ������ǿ��ˢ�£�
````java
	public abstract void flush()
			throws IOException
~~~~

���⣺

������ʹ���ֽ��������ַ�����?

��Ӳ���б����ļ����߽��д����ʱ��ʼ�������ֽڵķ�ʽ���еġ�����ͼƬҲ�ǰ��ֽ���ɣ����ַ�ֻ�����ڴ��вŻ��γɣ�����ʹ���ֽڵĲ��������ġ�

####�����������ļ�����

��dos�����´���һ���ļ��������copy��,ִ�з�ʽ���£�

![](https://github.com/damoncs/Damonzh/blob/master/images/copyByStream.PNG)

������ʽ���£�
>java Copy Դ�ļ� Ŀ���ļ�

ʵ�ַ�ʽ�����֣�

1����ԭ�ļ�ȫ����������֮��һ����д����һ���ļ�
2����д�߶�

�������£�

````java
import java.io.* ;
public class Copy{
	public static void main(String args[]){
		if(args.length!=2){		// �ж��Ƿ�����������
			System.out.println("����Ĳ�������ȷ��") ;
			System.out.println("����java Copy Դ�ļ�·�� Ŀ���ļ�·��") ;
			System.exit(1) ;	// ϵͳ�˳�
		}
		File f1 = new File(args[0]) ;	// Դ�ļ���File����
		File f2 = new File(args[1]) ;	// Ŀ���ļ���File����
		if(!f1.exists()){
			System.out.println("Դ�ļ������ڣ�") ;
			System.exit(1) ;
		}
		InputStream input = null ;		// ׼�������������󣬶�ȡԴ�ļ�
		OutputStream out = null ;		// ׼�������������д��Ŀ���ļ�
		try{
			input = new FileInputStream(f1) ;
		}catch(FileNotFoundException e){
			e.printStackTrace() ;
		}
		try{
			out = new FileOutputStream(f2) ;
		}catch(FileNotFoundException e){
			e.printStackTrace() ;
		}
		if(input!=null && out!=null){	// �ж����������Ƿ�׼����
			int temp = 0 ;	
			try{
				while((temp=input.read())!=-1){	// ��ʼ����
					out.write(temp) ;	// �߶���д
				}
				System.out.println("������ɣ�") ;
			}catch(IOException e){
				e.printStackTrace() ;
				System.out.println("����ʧ�ܣ�") ;
			}
			try{
				input.close() ;		// �ر�
				out.close() ;		// �ر�
			}catch(IOException e){
				e.printStackTrace() ;
			}
		}
	}	
}
~~~~

###�ܽ�
 
1�����ĸ���

2���ֽ������ַ��������ļ��Ĳ���

3���ַ������ֽ���������

4���߶���д��ʹ�ã��ڿ����г���

IO���ṩר�ŵ������������