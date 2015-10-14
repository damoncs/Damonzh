###Huffman��
Huffman���ֳ������������������������ű��롣

������Ϣ���䡢����ѹ���ȷ��棬��һ�����Ź㷺Ӧ�õĶ�����

####���������
�����ϵͳ�У����������ڴ���֮ǰ������Ҫ�Է��Ž��ж����Ʊ��롣

���磬�������ʹ�õ�Ӣ���ַ���ASCII�������8λ�Ķ����Ʊ��룬����ASCII��ʹ�ù̶����ȵĶ�����λ��ʾ�ַ������ASCII����һ��**��������**��

Ϊ���������ݱ��볤�ȣ����Բ��ò��������롣�����˼���ǣ���ʹ��Ƶ�Ƚϸߵ��ַ���϶̵ı��룬��������ѹ�������������˼�롣

�������ͻ���һ�����⣬��θ������е��ַ����Բ��������룬�������ݱ����ƽ����������أ�

#####���ַ������в���������
ǰ׺���룺��һ������ϵͳ�У��κ�һ�����붼�������������ǰ׺�����磺01,10,110,111,101�Ͳ���ǰ׺���룬��Ϊ10��101��ǰ׺�����ȥ��10����101�����ǰ׺���롣

���Ҫ���ò��������룬����ʹ��ǰ׺������߷ָ����������ڽ���ʱ�ͻ�������塣��ʹ�÷ָ������ɼӴ��˱��볤�ȣ�����һ�㶼ʹ��ǰ׺������ʵ�ֲ��������롣

��ôǰ׺�����дӺζ����أ�������õ������ǵ����ݽṹ���������������ǰ׺�����顣Ҳ�������ǵ�����-�����������
#####�ö��������ǰ׺����
Ϊ�˲���û�������ǰ׺���룬����ʹ�ö����������ʵ�֡�

1�����ַ����е������ַ���Ϊ��������Ҷ�ӽ�㡣

2���ڶ������У�ÿһ��������-���ӡ���Ӧһ��������0��ÿһ��������-�Һ��ӡ���Ӧһ��������1��

3�����ǣ��Ӹ��ڵ�ͨ��ÿ��Ҷ�ӽڵ��·�����Ͷ�Ӧ����Ӧ�Ķ����Ʊ��롣�ַ���Ӧ�ı��볤�ȵ�Ȼ���Ƕ�������Ӧ·�����ȡ�

������Ҫ�����˶��������κ�һ��Ҷ�ӽڵ㶼��������ڸ��ڵ㵽����Ҷ�ӽڵ��·�������ԣ�����ѡ�õı���һ����ǰ׺���롣

�������Ľ���Ҳ��������Ӧ�Ķ����������ݵ���ɣ���ͷ��ʼɨ������Ʊ���λ�������Զ������ĸ��ڵ㿪ʼ�����ݵ�ǰ����λ������һ���㣬����Ҷ�ӽڵ�����ַ����ɡ�Ȼ��ص����ڵ㡣������ɨ�������λ����
####Huffman����Huffman����
����ֻ�ǽ�������ζ��ַ����в���������ķ���-ʹ�ö�����������б���ͽ��롣������ͬһ�ַ��Ľ��еĶ����������ֹһ����ֻҪҶ�ӽڵ�������ַ���������Ӧ���ɡ�

���������Щ��ͬ�ı�������ѡ��ʹ�ñ��볤����С���أ�

��Ȼ���Ǽ���˵��Huffman���롣����ѡ�����ŵı��������б��롣

ѡ�����ű�����������������ʲô�������г���һ���������������Ĵ�Ȩ���볤�ȡ�����Ǻ���һ���������ӵ���Ҫָ�ꡣ�����ű�������ӡ�����������������Ȩ���볤����С�Ķ����������

#####Ѱ�Ҵ�Ȩ���볤����С�Ķ��������
Ҳ������Huffman��-���Ŷ�����

����Huffman�����㷨���£�

1�����ݸ�����n��Ȩֵ������n��ֻ��һ�����ڵ�Ķ�������n��Ȩֵ�ֱ�����Щ���������ڵ��Ȩֵ��F������n�������ɵļ��ϡ�

2����F��ѡȡ���ø��ڵ�ֵ��С������Ϊ���������������µĶ����������¶���������Ȩֵ=������Ȩֵ+������Ȩֵ��

3����F��ɾ������������������������F1.

4���ظ�2.3������ֱ��F��ֻ��һ������

![](https://github.com/damoncs/Damonzh/blob/master/images/Huffman.png)

####����Huffman���ľ���ʵ��
````java
public class HuffmanTreeNode extends BinTreeNode{
	private int weight ;		//Ȩ��
	private String coding = "" ;//����
	
	public HffmanTreeNode(int weight){
		this(weight,null);
	}
	public HuffmanTreeNode(int weight,Object e){
		super(e);
		this.weight = weight ;
	}
	
	//��д���෽��
	public HuffmanTreeNode getParent(){
		return (HuffmanTreeNode)super.getParent();
	}
	public HuffmanTreeNode getLChild(){
		reutrn (HuffmanTreeNode)super.getLChild();
	}
	public HuffmanTreeNode getRChild(){
		reutrn (HuffmanTreeNode)super.getRChild();
	}
	//get&set����
	������
}
~~~~
#####�����㷨��
````java
private static HuffmanTreeNode buildHuffmanTree(HuffmanTreeNode[] nodes){
	int n = nodes.length ;
	if(n<2)return nodes[0];
	List list = new ArrayList();//���ڵ����Ա�,
	for(int i=0;i<n;i++){
		list.add(nodes[i]);		//ѡȨֵ��С��ţ��Ӵ�С����
	}
	for(int i=0;i<n;i++){
		HffmanTreeNode min1 = (HffmanTreeNode)list.remove(list.size()-1) ;
		HffmanTreeNode min2 = (HffmanTreeNode)list.remove(list.size()-1) ;
		HffmanTreeNode newRoot = new HffmanTreeNode(min1.getWeight()+min2.getWeight()) ;
		list.add(newRoot);
	}
	return (HuffmanTreeNode)list.get(0);
}
~~~~
#####����Huffman����
````java
private static void generateHuffmanCode(HffmanTreeNode root){
	if(root==null)return null;
	if(root.hasParent()){
		if(root.isLChild())
			root.setCoding(root.getParent.getCoding()+"0") ;
		else
			root.setCoding(root.getParent.getCoding()+"1") ;
	}
	generateHuffmanCode(root.getLChild);
	generateHuffmanCode(root.getRChild);
}

