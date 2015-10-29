###jQuery事件
jQuery是为事件处理特别设计的

####jQuery事件函数
jQuery事件处理方法是jQuery中的核心函数。

事件处理程序是指：当HTML中发生某些事件时所调用的方法。

####jQuery名称冲突
jQuery使用$符号作为jQuery的简介方式。

某些其他的JavaScript库中的函数（比如Prototype）同样使用$符号。

jQuery使用名为noConfict()的方法来解决该问题。

可以使用如下：
````javascript
var jp=jQuery.noConfict().
~~~~
之后可以使用自己的名称jp来代替$符号。

####结论
由于jQuery是为处理HTML事件而特别设计的，所以遵循以下原则会使代码易于维护：

- 把所有jQuery代码置于事件处理函数中
- 把所有事件处理函数置于文档就绪事件处理器中
- 把jQuery代码置于单独的.js文件中
- 如果存在名称冲突，则重命名jQuery库
