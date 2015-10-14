###Huffman树
Huffman树又称最优树，可以用来构造最优编码。

用于信息传输、数据压缩等方面，是一类有着广泛应用的二叉树

####二叉编码树
计算机系统中，符号数据在处理之前首先需要对符号进行二进制编码。

例如，计算机中使用的英文字符的ASCII编码就是8位的二进制编码，由于ASCII码使用固定长度的二进制位表示字符，因此ASCII码是一种**定长编码**。

为了缩短数据编码长度，可以采用不定长编码。其基本思想是：给使用频度较高的字符遍较短的编码，这是数据压缩技术的最基本思想。

接下来就会有一个问题，如何给数据中的字符遍以不定长编码，而是数据编码的平均长度最短呢？

#####对字符集进行不定长编码
前缀编码：在一个编码系统中，任何一个编码都不是其他编码的前缀。例如：01,10,110,111,101就不是前缀编码，因为10是101的前缀。如果去掉10或者101则就是前缀编码。

如果要采用不定长编码，必须使用前缀编码或者分隔符，否则在解码时就会产生歧义。而使用分隔符无疑加大了编码长度，所以一般都使用前缀编码来实现不定长编码。

那么前缀编码有从何而来呢？这里就用到了我们的数据结构——二叉树来求得前缀编码组。也就是我们的主题-二叉编码树。
#####用二叉树求得前缀编码
为了产生没有歧义的前缀编码，可以使用二叉编码树来实现。

1、将字符集中的所有字符作为二叉树的叶子结点。

2、在二叉树中，每一个“父亲-左孩子”对应一个二进制0，每一个“父亲-右孩子”对应一个二进制1。

3、于是，从根节点通往每个叶子节点的路径，就对应于相应的二进制编码。字符对应的编码长度当然就是二叉树对应路径长度。

这里主要运用了二叉树总任何一个叶子节点都不会出现在根节点到其他叶子节点的路径。所以，这样选用的编码一定是前缀编码。

反过来的解码也可以用相应的二叉编码树便捷的完成：从头开始扫描二进制编码位串，并对二叉树的根节点开始，根据当前比特位进入下一层结点，到达叶子节点输出字符即可。然后回到根节点。并继续扫描二进制位串。
####Huffman树及Huffman编码
上述只是介绍了如何对字符进行不定长编码的方法-使用二叉编码树进行编码和解码。但对于同一字符的进行的二叉编码树则不止一个。只要叶子节点个数与字符集个数对应即可。

那如何在这些不同的编码树中选择使得编码长度最小的呢？

当然就是即将说的Huffman编码。就是选择最优的编码树进行编码。

选择最优编码树的依据条件是什么？这里有出现一个概念：二叉编码树的带权编码长度。这就是衡量一个编码优劣的重要指标。决定着编码的优劣。所以这里就是在求带权编码长度最小的二叉编码树。

#####寻找带权编码长度最小的二叉编码树
也就是求Huffman树-最优二叉树

构造Huffman树的算法如下：

1、根据给定的n个权值，构造n课只有一个根节点的二叉树，n个权值分别是这些二叉树根节点的权值，F是由这n棵树构成的集合。

2、在F中选取两棵根节点值最小的数作为左右子树，构造新的二叉树，置新二叉树根的权值=左子树权值+右子树权值。

3、在F中删除这两棵树，并将新树加入F1.

4、重复2.3操作，直至F中只有一棵树。

![](https://github.com/damoncs/Damonzh/blob/master/images/Huffman.png)

####构造Huffman树的具体实现
````java
public class HuffmanTreeNode extends BinTreeNode{
	private int weight ;		//权重
	private String coding = "" ;//编码
	
	public HffmanTreeNode(int weight){
		this(weight,null);
	}
	public HuffmanTreeNode(int weight,Object e){
		super(e);
		this.weight = weight ;
	}
	
	//改写父类方法
	public HuffmanTreeNode getParent(){
		return (HuffmanTreeNode)super.getParent();
	}
	public HuffmanTreeNode getLChild(){
		reutrn (HuffmanTreeNode)super.getLChild();
	}
	public HuffmanTreeNode getRChild(){
		reutrn (HuffmanTreeNode)super.getRChild();
	}
	//get&set方法
	···
}
~~~~
#####构造算法：
````java
private static HuffmanTreeNode buildHuffmanTree(HuffmanTreeNode[] nodes){
	int n = nodes.length ;
	if(n<2)return nodes[0];
	List list = new ArrayList();//根节点线性表,
	for(int i=0;i<n;i++){
		list.add(nodes[i]);		//选权值大小存放，从大到小有序
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
#####生成Huffman编码
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

