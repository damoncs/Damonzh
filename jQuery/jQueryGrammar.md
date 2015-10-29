###jQuery语法
通过jQuery，可以选取（查询，query）HTML元素，并对他们执行“操作”（actions）。

####语法
jQuery语法是为HTML元素的选取编制的，可以对元素执行某些操作

基础语法:$(selector).action()
- 美元符号定义jQuery
- 选择符(selector)"查询"和"查找"HTML元素
- jQuery的action()执行对元素的操作

####实例
$(this).hide()

>演示jQuery.hide()函数，隐藏当前的HTML元素

$("#test").hide()

>演示jQuery。hide()函数，隐藏id="test"的元素

$("p").hide()

>隐藏所有<p>的元素。

$(".test").hide()

>隐藏所有calss="test"的元素。

####文档就绪函数

````javascript
$(document).ready(function(){
	--- jQuery functions go here ---
});
~~~~
所有的jQuery函数都位于一个document ready函数中。

这是为了防止文档在完成加载（就绪）之前运行jQuery代码。

如果在文档没有完全加载之前就运行函数，操作可能失败。

比如:

>试图隐藏一个不存在的元素

>获得未完全加载的图片的大小