####Css浮动
浮动的框可以向左或向右移动，知道它的外边缘碰到包含框或另一个浮动框的边框为止

由于浮动不在文档的普通流中，所以文档的普通流中的块框表现得就像浮动框不存在一样。

>相关概念：浮动框、包含框、普通框

- 通过float属性实现元素的浮动。

````html
<html>
<head>
<style type="text/css">
div.container
{
width:100%;
margin:0px;
border:1px solid gray;
line-height:150%;
}
div.header,div.footer
{
padding:0.5em;
color:white;
background-color:gray;
clear:left;
}
h1.header
{
padding:0;
margin:0;
}
div.left
{
float:left;
width:160px;
margin:0;
padding:1em;
}
div.content
{
margin-left:190px;
border-left:1px solid gray;
padding:1em;
}
</style>
</head>
<body>

<div class="container">

<div class="header"><h1 class="header">W3School.com.cn</h1></div>

<div class="left"><p>"Never increase, beyond what is necessary, the number of entities required to explain anything." William of Ockham (1285-1349)</p></div>

<div class="content">
<h2>Free Web Building Tutorials</h2>
<p>At W3School.com.cn you will find all the Web-building tutorials you need,
from basic HTML and XHTML to advanced XML, XSL, Multimedia and WAP.</p>
<p>W3School.com.cn - The Largest Web Developers Site On The Net!</p></div>

<div class="footer">Copyright 2016 by Zhangqq Investment.</div>
</div>

</body>
</html>

~~~~

####行框和清理
浮动框旁边的行框被缩短，从而给浮动框留出空间，行框围绕浮动框。
