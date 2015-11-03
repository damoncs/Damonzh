###学习目标
- 掌握流的概念
- 掌握字节流与字符流的作用
- 掌握文件的标准操作步骤
- 掌握字节与字符操作的区别

###具体内容
####流
- 程序中，所有的数据都是以流的方式进行传输的

- 程序需要数据时，使用输入流读取数据，当程序要将数据保存，就使用输出流完成

- 程序的输入输出都是以流的形式保存的，流中保存的实际上全都是字节码文件。

####字节流与字符流
主要的四个类

>字节流：OutputStream、InputStream

>字符流：Writer、Reader

注：上述四个类全都是抽象类，在使用时使用其对应的子类

####文件操作流程
在Java中IO操作也是有相应步骤的，以文件操作为例：

 - A、使用File打开一个文件
 - B、通过字节流或字符流的子类，指定输出的位置
 - C、进行读写操作
 - D、关闭输入/输出

IO属于资源操作，对于资源操作，最后必须进行关闭，否则就有可能出现未知错误

####一、字节流
主要是操作byte类型数据，以byte数组为准，操作类是：OutputStream、InputStream

Byte是字节，所以使用字节流操作，所有的数据基本都可以使用字节数组表示

1、字节输出流：OutputStream
io中字节输出流的最大父类，此类的定义如下：
````java
    public abstract class OutputStream extends Object implements
		Closeable,Flushable
~~~~
Closeable:表示可以关闭的操作，因为程序运行到最后肯定要关闭
Flushable:表示刷新，清空内存中的数据

OutputStream类的常用操作方法：

![](https://github.com/damoncs/Damonzh/blob/master/images/OutputStream.PNG)

在文件中追加新的内容

之前的操作，在重新写入文件之后，都会覆盖文件中的已有内容，那么此时可以通过FileOutpurStream向文件中追加内容

使用以下构造方法：
````java
	public FileOutputStream(File file,boolean append)throws FileNotFoundException
~~~~

在构造方法中，将append设为true即可实现内容的追加
2、字节输入流：InputStream

和OutputStream相同的原理

InputStream类的常用操作方法：

![](https://github.com/damoncs/Damonzh/blob/master/images/InputStream.PNG)

使用输入流时，在不知文件大小时，可以使用如下：
````java
	int len = 0 ;
	int temp = 0 ;
	while((temp = input.read())!=-1){
		//表示还有内容，文件没读完
		b[len] = (byte)temp ;
		len ++ ;
	}
~~~~

####二、字符流
和字节流主要的区别就是操作对象变为字符char

Writer类的常用操作方法：

![](https://github.com/damoncs/Damonzh/blob/master/images/Writer.PNG)

Reader类的常用操作方法：

![](https://github.com/damoncs/Damonzh/blob/master/images/Reader.PNG)

####字节流与字符流区别深追

字节流在操作的时候是不会用到缓冲区（一块内存）的，是与文件本身直接操作的，而字符流在操作的时候是使用到了缓冲区

![](https://github.com/damoncs/Damonzh/blob/master/images/diffeFormStream.PNG)

验证上述缓冲取得存在：使用输出流输出到文件时，在最后，不要关闭流（out.close()），之后字节流还是完成了保存到文件而字节流却为保存，

说明保存在了缓冲区之中，而如果执行关闭的时候会强制性的刷新缓冲区，所以把内容输出。

现在假设没有关闭，则可以强制刷新：
````java
	public abstract void flush()
			throws IOException
~~~~

问题：

开发中使用字节流还是字符流好?

在硬盘中保存文件或者进行传输的时候始终是以字节的方式进行的。包括图片也是按字节完成，而字符只有在内存中才会形成，所以使用字节的操作是最多的。

####操作范例：文件拷贝

在dos命令下存在一个文件拷贝命令（copy）,执行方式如下：

![](https://github.com/damoncs/Damonzh/blob/master/images/copyByStream.PNG)

操作格式如下：
>java Copy 源文件 目标文件

实现方式有两种：

1、将原文件全部读出来，之后一次性写入另一个文件
2、边写边读

代码如下：

````java
import java.io.* ;
public class Copy{
	public static void main(String args[]){
		if(args.length!=2){		// 判断是否是两个参数
			System.out.println("输入的参数不正确。") ;
			System.out.println("例：java Copy 源文件路径 目标文件路径") ;
			System.exit(1) ;	// 系统退出
		}
		File f1 = new File(args[0]) ;	// 源文件的File对象
		File f2 = new File(args[1]) ;	// 目标文件的File对象
		if(!f1.exists()){
			System.out.println("源文件不存在！") ;
			System.exit(1) ;
		}
		InputStream input = null ;		// 准备好输入流对象，读取源文件
		OutputStream out = null ;		// 准备好输出流对象，写入目标文件
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
		if(input!=null && out!=null){	// 判断输入或输出是否准备好
			int temp = 0 ;	
			try{
				while((temp=input.read())!=-1){	// 开始拷贝
					out.write(temp) ;	// 边读边写
				}
				System.out.println("拷贝完成！") ;
			}catch(IOException e){
				e.printStackTrace() ;
				System.out.println("拷贝失败！") ;
			}
			try{
				input.close() ;		// 关闭
				out.close() ;		// 关闭
			}catch(IOException e){
				e.printStackTrace() ;
			}
		}
	}	
}
~~~~

###总结
 
1、流的概念

2、字节流、字符流操作文件的步骤

3、字符流和字节流的区别

4、边读边写的使用，在开发中常用

IO中提供专门的输入输出操作