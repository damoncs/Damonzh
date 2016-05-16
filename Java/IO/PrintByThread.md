###多线程输出文件
####一、先产生10000个随机数
1、定义一个PrintWriter用于输出

````java
	PrintWriter pw = new PrintWriter(new FileWriter(new File("input.txt")),true);
	Random random = new Random() ;
	for(int i=0;i<10000;i++){
		pw.print(Math.abs(random.nextInt())%100 + " ") ;
	}
	pw.flush();
	pw.close();
~~~~