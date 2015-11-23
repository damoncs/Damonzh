###Spring的事务处理
事务是一系列必须都成功的操作，只有一部分操作失败，所有其他的步骤将要撤销（事务回滚）

####事务的特性（ACID）
- 1、原子性

事务的执行过程中，把事务作为一个工作单元处理，一个工作单元包括多个工作步骤，每个工作步骤都完成才能完成事务。

- 2、一致性

保证数据处于一致状态，事务开始和结束后的数都要处于一致状态（不管事务成功还是事务失败）

- 3、隔离性

保证事务访问的任何数据不会受其他事务所做的任何改变的影响，直到该事务完成。（类似线程的同步性）

- 4、持久性

保证假如事务执行成功，则它在系统中产生的结果是持久的。

事务提交是数据源和应用程序之间的一个协议，而事务日志就是这个协议的书面记录.

更为重要的是，改变本身不是持久的，另一事物可能会在此后改变数据。而事务日志能提供可追查的依据

针对银行取款的例子，假如是以为业务逻辑的错误导致事务需要会服到以前的状态，则可以使用数据库的事务日志。

总结：简洁的表述事务的原子性表示事务是否完成；一致性表示当事务执行失败时，所有该事务影响的数据都应该恢复到事务执行前的状态；
隔离性表示事务执行过程中对数据的修改,在事务提交之前对其他事务是不可见的；持久性表示对对数据的操作应该是持久的,但也是可以恢复的.

####事务处理的3种方式

1、关系型数据库的事务处理

数据库提供了事务处理。在数据库中，事务出力分为3个步骤：
````java
Begin Transaction(启动事务处理)
//事务处理步骤
Commit或RollBack(提交或回滚)
End Transaction(提交事务处理)
~~~~

说明:事物的隔离级别使用Isolation表示。

- read uncommitted：允许读取任何提交或未提交的记录，即不管记录是否提交都允许读取
- read committed：只允许读取已经提交的记录。
- repeatable：只能看到事务开始时刻的数据库的一个快照，事务开始后更改的所有记录不管提交未提交都无法看到

大多数数据库默认的隔离级别是read committed。

2、传统的JDBC事务处理

JDBC数据库接口，提供了基于数据库连接进行事务处理的功能。

一般的流程：首先获取数据源；然后根据数据源获取数据库连接，接着设定事务开始。执行相应的操作，最后执行成功提交，执行失败则回滚。
````java
public class Helloworld{
	private DataSource dataSource ;
	//获取数据源
	public void satDataSource(DataSource dataSource){
		this.dataSource = dataSource ;
	}
	Connection conn = null ;
	Statement stmt = null ;
	try{
		//获取数据库连接
		conn = dataSource.getConnection() ;
		//开始启动事务
		conn.setAutoCommit(false) ;
		stmt = conn.createStatement() ;
		//执行相应操作
		stmt.executeUpdate("INSERT INTO hello VALUES(1,'gf','helloworld')") ;
		//执行成功则提交
		conn.commit() ;
	}catch(SQLException e){
		if(conn!=null){
			try{
				//执行不成功，回滚
				conn.rollback() ;
			}catch(SQLException ex){
				System.out.println(ex);
			}
		}
	}finally{
		//假如stmt不为空，则关闭stmt
		if(stmt!=null){
			try{
				stmt.close();
			}catch(SQLException ex){
				System.out.println(ex);
			}
		}
		if(conn!=null){
			try{
				conn.close();
			}catch(){}
		}
	}
}
~~~~

3、分布式事务处理

分布式事务处理针对多个数据库事务的事务处理。

分布式事务就是事务分布在多个资源上，有多个组件共享的事务。

具有如下几个特征：
- 组件要在同一原子操作中与多个资源通信。针对银行转账，可能账户是农业银行的，要向其他银行进行转账。
- 多个组件要在同一原子操作中操作。两个不同银行之间转账，要么两个系统都操作成功，要么都操作失败。
- 分布式事务需要多个不同的事务管理器的合作。

####Spring的事务处理
- 1、编程式事务处理
- 2、声明式事务处理

Spring中的事务处理是基于动态AOP机制实现。

Spring事务的中心接口是org.springframework.transaction.PlatformtransactionManager.


两者区别：编程式事务处理虽比传统的JDBC有了很大的改进，但还是有些麻烦，因为要实现具体的方法。Spring声明式事务处理提供例如更好的解决方法。

在小型软件系统中，只有很少的事务操作，使用编程式事务处理比较好，如果是大型的软件系统，有大量的事务操作，则使用声明式事务处理比较好。而且它是的事务处理与具体的业务逻辑分离。