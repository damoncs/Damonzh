####Page指令
- page指令的主要用处
- 指定页面的MIME编码
- 使用JSP进行数据库的连接操作
- 使用Page指令完成错误页的显示

page指令是在JSP开发中较为重要，使用此属性，可以定义一个JSP页面的相关属性，包含设置MIME类型、定义需要导入的包、错误页的指定等。

page指令语法：<%@page属性=“内容”%>

####设置MIME
可设置成doc文档的形式显示jsp。

设置显示（下载）文件名：

<% response.setHeader("Content-Dispostion","attachement;filename=mldn.doc")%>

####错误页的显示