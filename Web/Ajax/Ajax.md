####Ajax
异步的JavaScript和xml

是一种用于创建快速动态网页的技术。

通过在后台与服务器进行少量数据交换，Ajax可以使网页实现异步更新。

####Ajax工作原理
>创建XMLHttpRequest对象

>XMLHttpRequest是AJAX的基础

XMLHttpRequest用于在后台与服务器交换数据。这意味着可以在不重新加载整个网页的情况下，
对网页的某个部分进行刷新

####创建 XMLHttpRequest 对象
所有现代浏览器（IE7+、Firefox、Chrome、Safari 以及 Opera）均内建 XMLHttpRequest 对象。

创建 XMLHttpRequest 对象的语法：

>variable=new XMLHttpRequest();

老版本的 Internet Explorer （IE5 和 IE6）使用 ActiveX 对象：

>variable=new ActiveXObject("Microsoft.XMLHTTP");

####向服务器发送请求
使用open()和send()方法
````xml
xmlhttp.open("GET","test1.txt",true);
xmlhttp.send();
~~~~

####GET 还是 POST？
- 与 POST 相比，GET 更简单也更快，并且在大部分情况下都能用。
- 然而，在以下情况中，请使用 POST 请求：
- 无法使用缓存文件（更新服务器上的文件或数据库）
- 向服务器发送大量数据（POST 没有数据量限制）
- 发送包含未知字符的用户输入时，POST 比 GET 更稳定也更可靠

####Async = true
- 当使用 async=true 时，请规定在响应处于 onreadystatechange 事件中的就绪状态时执行的函数：
````java
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","test1.txt",true);
xmlhttp.send();
~~~~

####Async = false
- 如需使用 async=false，请将 open() 方法中的第三个参数改为 false：
- xmlhttp.open("GET","test1.txt",false);
- 我们不推荐使用 async=false，但是对于一些小型的请求，也是可以的。
- 请记住，JavaScript 会等到服务器响应就绪才继续执行。如果服务器繁忙或缓慢，应用程序会挂起或停止。
- 注释：当您使用 async=false 时，请不要编写 onreadystatechange 函数 - 把代码放到 send() 语句后面即可：
- xmlhttp.open("GET","test1.txt",false);
- xmlhttp.send();
- document.getElementById("myDiv").innerHTML=xmlhttp.responseText;

