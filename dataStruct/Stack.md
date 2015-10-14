###栈
####栈的实现
````java
public class StackArray implements Stack{
	private final int LEN = 8 ;		//数组的默认大小
	private Object[] elements ;		//数据元素数组
	private int size ;				//相当于栈顶指针
		
	public StackArray(){
		size = -1 ;
		elements = new Object[LEN] ;
	}
	
	public void push(Object e){
		if(getSize()>=elements.length)expandSpace() ;
		elements[++size]=e;
	}
	private void expandSpace(){
		Object[] a = new Object[elements.length*2];
		for(int i=0;i<elements.length;i++){
			a[i] = elements[i] ;
		}
		elements = a ;
	}
	public Object pop(){
		if(size<0)throw new Exception("栈空！");
		Object obj = elements[size] ;
		elements[size--] = null;
		return obj;
	}
	public Object peek(){
		if(size<0)throw new Exception("栈空！");
		return elements[size] ;
	}
}
,,,,