###ջ
####ջ��ʵ��
````java
public class StackArray implements Stack{
	private final int LEN = 8 ;		//�����Ĭ�ϴ�С
	private Object[] elements ;		//����Ԫ������
	private int size ;				//�൱��ջ��ָ��
		
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
		if(size<0)throw new Exception("ջ�գ�");
		Object obj = elements[size] ;
		elements[size--] = null;
		return obj;
	}
	public Object peek(){
		if(size<0)throw new Exception("ջ�գ�");
		return elements[size] ;
	}
}
,,,,