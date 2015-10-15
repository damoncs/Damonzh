####TwoSum
这是一道非常经典的题目，brute force时间复杂度为O(n^2), 对每一对pair两两比较。 优化的方法一般有两种，第一种是用哈希表，时间复杂度为O(n),同时空间复杂度也是O(n),代码如下：

````java
public int[] twoSum(int[] numbers, int target) {  
    int[] res = new int[2];  
    if(numbers==null || numbers.length<2)  
        return null;  
    HashMap<Integer,Integer> map = new HashMap<Integer,Integer>();  
    for(int i=0;i<numbers.length;i++)  
    {  
        if(map.containsKey(target-numbers[i]))  
        {  
            res[0]=map.get(target-numbers[i])+1;  
            res[1]=i+1;  
            return res;  
        }  
        map.put(numbers[i],i);  
    }  
    return null;  
}  
第二种解法是先对数组进行排序，然后使用夹逼的方法找出满足条件的pair，原理是因为数组是有序的，那么假设当前结果比target大，那么左端序号右移只会使两个数的和更大，反之亦然。所以每次只会有一个选择，从而实现线性就可以求出结果。该算法的时间复杂度是O(nlogn+n)=O(nlogn)，空间复杂度取决于排序算法。代码如下：

````java
public int[] twoSum(int[] numbers, int target) {  
    int[] res = new int[2];  
    if(numbers==null || numbers.length<2)  
        return null;  
    Arrays.sort(numbers);  
    int l = 0;  
    int r = numbers.length-1;  
    while(l<r)  
    {  
        if(numbers[l]+numbers[r]==target)  
        {  
            res[0] = number[l];  
            res[1] = number[r];  
            return res;  
        }  
        else if(numbers[l]+numbers[r]>target)  
        {  
            r--;  
        }  
        else  
        {  
            l++;  
        }  
    }  
    return null;  
}  

注意，在这里，输出结果改成了满足相加等于target的两个数，而不是他们的index。因为要排序，如果要输出index，需要对原来的数的index进行记录，方法是构造一个数据结构，包含数字的值和index，然后排序。所以从这个角度来看，这道题第二种解法并没有第一种解法好，空间也是O(n). 在LeetCode原题中是假设结果有且仅有一个的，一般来说面试时会要求出所有的结果，这个时候会涉及到重复pair的处理，相关的内容会在3Sum那道题目中涉及到，请参见3Sum -- LeetCode.
