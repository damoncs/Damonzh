###打印流(PrintStream、Printwriter)
- 整个IO中，打印流是输出信息最方便的类

- 主要包含字节打印流（PrintStream）、字符打印流（PrintWriter）

- 可以打印任何数据类型，例如：小数、整数、字符串

####比较
之前在打印信息时，需要使用OutputStream，但这样对于数据的输出会很麻烦，String-->byte[],打印流可以方便的进行输出

![](https://github.com/damoncs/Damonzh/blob/master/images/PrintStream.png)

其中定义了很多print、println方法，和System.out.println()一样，可以打印任何的数据类型

构造方法：

>public PrintStream(OutputStream out)-->指定输出位置

此构造方法接受OutputStream的子类。

####打印流的好处
在PintStream中定义的构造方法中可以发现直接接受了OutputStream类的实例，猜想应该是对OutputStream类进行了包装，以便更加方便的进行输出操作。

![](https://github.com/damoncs/Damonzh/blob/master/images/PrintDemo01.png)

####格式化输出
在JDK1.5之后，Java有队PrintStream进行了扩充增加了格式化的输出方式，直接使用printf()方法完成操作。

在格式化是指定其输出数据类型：

![](https://github.com/damoncs/Damonzh/blob/master/images/PrintType.png)

这个类似c语言中的输出。

####总结
1.PrintStream可以方便的完成输出操作

2.在以后的输出中基本都使用PringStream完成，方便。

3.PrintStream属于装饰设计模式实现
