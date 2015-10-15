####TwoSum
����һ���ǳ��������Ŀ��brute forceʱ�临�Ӷ�ΪO(n^2), ��ÿһ��pair�����Ƚϡ� �Ż��ķ���һ�������֣���һ�����ù�ϣ��ʱ�临�Ӷ�ΪO(n),ͬʱ�ռ临�Ӷ�Ҳ��O(n),�������£�

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
�ڶ��ֽⷨ���ȶ������������Ȼ��ʹ�üбƵķ����ҳ�����������pair��ԭ������Ϊ����������ģ���ô���赱ǰ�����target����ô����������ֻ��ʹ�������ĺ͸��󣬷�֮��Ȼ������ÿ��ֻ����һ��ѡ�񣬴Ӷ�ʵ�����ԾͿ��������������㷨��ʱ�临�Ӷ���O(nlogn+n)=O(nlogn)���ռ临�Ӷ�ȡ���������㷨���������£�

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

ע�⣬������������ĳ���������ӵ���target�������������������ǵ�index����ΪҪ�������Ҫ���index����Ҫ��ԭ��������index���м�¼�������ǹ���һ�����ݽṹ���������ֵ�ֵ��index��Ȼ���������Դ�����Ƕ������������ڶ��ֽⷨ��û�е�һ�ֽⷨ�ã��ռ�Ҳ��O(n). ��LeetCodeԭ�����Ǽ��������ҽ���һ���ģ�һ����˵����ʱ��Ҫ������еĽ�������ʱ����漰���ظ�pair�Ĵ�����ص����ݻ���3Sum�ǵ���Ŀ���漰������μ�3Sum -- LeetCode.
