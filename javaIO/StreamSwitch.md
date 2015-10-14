###字节、字符流转换
主要学习OutputStreamWriter和InputStreamReader类的作用

这两个类主要用于字节流与字符流的转换操作。

	OutputStreamWriter：是Writer的子类，将输出的字符流变为字节流

	InputStreamReader：是Reader的子类，将输入的字节流变为字符流

####转换步骤
还是以文件操作为例，内存中的字符数据需要通过OutputStreamWriter变为字节流才能保存在文件之中，读取的时候需要将OutStreamWriter变为字节流才能保存在文件之中，读取的时候需要将读入的字节流通过InputStreamReader变为字符流。

![](https://github.com/damoncs/Damonzh/blob/master/images/StreamSwitch.PNG)

####FileWrite和FileReader的说明
从JDK文档来看，FileOutputStream是OutputStream的直接子类，FileInputStream是InputStream的直接子类。

但是FileWriter和FileReader不是Writer和Reader的直接子类，它们分别继承自OutputStreamWriter和InputStreamReader。

这就说明了不管是字节流还是字符流实际上最终都是以字节的形式操作输入输出流的。

~~~~
	java.lang.Object
		->java.io.Writer
			->java.io.OutputStreamWriter
				->java.io.FileWriter
~~~~
FileWirter不是Writer的子类，而是转换流的子类
~~~~
	java.lang.Object
		->java.io.Reader
			->java.io.InputStreamReader
				->java.io.FileReader
~~~~
FileReader也不是Reader的子类，而是转换流的子类

总结的话就是：程序中的操作可以使字节流，也可以是字符流，单文件中保存始终是以字节的形式保存。

###总结

1、必须掌握两个转换类的作用

2、一定要清楚操作的终端实际上都是字节的形式

3、FileWriter和FileReader两个子类的定义，中间使用了转换类
