###BufferedReader类的使用
- BufferedReader类用于接受任意长度的数据，而且可以避免乱码的产生
- 本节还包括键盘输入的基本形式

####概述
Buffer：表示缓冲区，与StringBuffer一样，缓冲区的内容可以更改，可以提高效率

如果要想接受任意长度的数据，而且避免乱码产生，就可以使用BufferedReader。

因为输入数据也可能存在中文，所以使用字符流完成。

![](https://github.com/damoncs/Damonzh/blob/master/images/BufferedReader.PNG)

System.in本身表示的是InputStream(字节流)，现在要求接受的是一个字符流，需要将字节流变为字符流才可以。（InputStreamReader）

![](https://github.com/damoncs/Damonzh/blob/master/images/BufferedReaderIns.png)

此时，就可以给出键盘输入数据的标准格式。

````java
import java.io.* ;
public class BufferedReaderDemo01{
	public static void main(String args[]){
		BufferedReader buf = null ;		// 声明对象
		buf = new BufferedReader(new InputStreamReader(System.in)) ;	// 将字节流变为字符流
		String str = null ;	// 接收输入内容
		System.out.print("请输入内容：") ;
		try{
			str = buf.readLine() ;	// 读取一行数据
		}catch(IOException e){
			e.printStackTrace() ;	// 输出信息
		}
		System.out.println("输入的内容为：" + str) ;
	}
};
~~~~

####总结
1、BufferedReader类的作用是什么？

2、使用BufferedReader接受输入数据。
