###���߳�����ļ�
####һ���Ȳ���10000�������
1������һ��PrintWriter�������

````java
	PrintWriter pw = new PrintWriter(new FileWriter(new File("input.txt")),true);
	Random random = new Random() ;
	for(int i=0;i<10000;i++){
		pw.print(Math.abs(random.nextInt())%100 + " ") ;
	}
	pw.flush();
	pw.close();
~~~~