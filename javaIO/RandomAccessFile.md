###ѧϰĿ��
-����RandomAccessFile�������
-����ʹ��RandomAccessFile��ȡָ��λ�õ�����
###��������
RandomAccessFile����Ҫ����������ȡ���ܣ����Զ�ȡָ��λ�õ�����
������һ���ļ��б�����һ���������ݣ�
>zhangsan,30
>lisi,31
>wangwu,32
��Ϊ���ļ��У����е����ݶ��ǰ����ֽڴ�ŵģ����й̶���λ�á�
һ��ռ12���ֽڣ�zhangsan 8�� ��int��4��
����zhangsan����Ϣ1~12λ��lisi13~24λ��wangwu25~36λ
RandomAccessFile��Ҫ����:

![](https://pandao.github.io/editor.md/examples/images/4.jpg)

���죺
    public RandomAccessFile(File file,String mode)
	    throws FileNotFoundException
~~~~
ʵ��������ʱ��Ҫ����File�࣬���߳���Ҫ�������ļ�����һ������Ϊ�ļ��Ĵ�ģʽ��
��ģʽ������
-r:��ģʽ
-w:ֻд
-rw����д�����ʹ�ô�ģʽ���ļ�����������Զ�������
    import java.io.File ;
	import java.io.RandomAccessFile ;
	public class RandomAccessFileDemo01{
		public static void main(String args[])throws{
			File f = new File("d:"+File.separator+"test.txt") ;
			RandomAccessFile rdf = null ;
			rdf = new RandomAccessFile(f,"rw") ;//��дģʽ
			String name = null ;
			int age = 0 ;
			name = "zhangsan" ;			// �ַ�������Ϊ8
			age = 30 ;					// ���ֵĳ���Ϊ4
			rdf.writeBytes(name) ;		// ������д���ļ�֮��
			rdf.writeInt(age) ;			// ������д���ļ�֮��
			name = "lisi    " ;			// �ַ�������Ϊ8
			age = 31 ;					// ���ֵĳ���Ϊ4
			rdf.writeBytes(name) ;		// ������д���ļ�֮��
			rdf.writeInt(age) ;			// ������д���ļ�֮��
			name = "wangwu  " ;			// �ַ�������Ϊ8
			age = 32 ;					// ���ֵĳ���Ϊ4
			rdf.writeBytes(name) ;		// ������д���ļ�֮��
			rdf.writeInt(age) ;			// ������д���ļ�֮��
			rdf.close() ;				// �ر�
		}
	}
~~~~
###�ܽ�
1��RandomAccessFile�������
2��RandomAccessFile��Ĳ����Ƚ��鷳���˽⼴�ɣ�
IO���ṩר�ŵ������������