###学习目标
-掌握RandomAccessFile类的作用
-可以使用RandomAccessFile读取指定位置的数据
###具体内容
RandomAccessFile类主要是完成随机读取功能，可以读取指定位置的内容
举例：一个文件中保存了一下三个数据：
>zhangsan,30
>lisi,31
>wangwu,32
因为在文件中，所有的内容都是按照字节存放的，都有固定的位置。
一行占12个字节，zhangsan 8个 、int型4个
所以zhangsan的信息1~12位，lisi13~24位，wangwu25~36位
RandomAccessFile主要方法:

![](https://pandao.github.io/editor.md/examples/images/4.jpg)

构造：
    public RandomAccessFile(File file,String mode)
	    throws FileNotFoundException
~~~~
实例化此类时需要传递File类，告诉程序要操作的文件，另一个参数为文件的打开模式。
打开模式包括：
-r:读模式
-w:只写
-rw：读写，如果使用此模式，文件不存在则会自动创建。
    import java.io.File ;
	import java.io.RandomAccessFile ;
	public class RandomAccessFileDemo01{
		public static void main(String args[])throws{
			File f = new File("d:"+File.separator+"test.txt") ;
			RandomAccessFile rdf = null ;
			rdf = new RandomAccessFile(f,"rw") ;//读写模式
			String name = null ;
			int age = 0 ;
			name = "zhangsan" ;			// 字符串长度为8
			age = 30 ;					// 数字的长度为4
			rdf.writeBytes(name) ;		// 将姓名写入文件之中
			rdf.writeInt(age) ;			// 将年龄写入文件之中
			name = "lisi    " ;			// 字符串长度为8
			age = 31 ;					// 数字的长度为4
			rdf.writeBytes(name) ;		// 将姓名写入文件之中
			rdf.writeInt(age) ;			// 将年龄写入文件之中
			name = "wangwu  " ;			// 字符串长度为8
			age = 32 ;					// 数字的长度为4
			rdf.writeBytes(name) ;		// 将姓名写入文件之中
			rdf.writeInt(age) ;			// 将年龄写入文件之中
			rdf.close() ;				// 关闭
		}
	}
~~~~
###总结
1、RandomAccessFile类的作用
2、RandomAccessFile类的操作比较麻烦，了解即可，
IO中提供专门的输入输出操作