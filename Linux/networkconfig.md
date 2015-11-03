###Linux网络配置
在这里总结下CentOS7的使用过程中网络配置相关的命令
####查看网关地址
Linux下的查看网关地址总结如下：

其中不同系统可能存在差异，还有DHCP获取IP情况下有些命令也不适用。

1.ifconfig -a和cat /etc/resolv.conf(主要查看ip/network和dns)

2. netstat -rn

3.cat /etc/sysconfig/network-scripts/ifcfg-eth0

4.cat /etc/sysconfig/network

5.ip route show

6.route -n

####查看系统版本和内核版本
1.内核版本

>cat /proc/version

>uname -a

>uname -r

2.系统版本

>lsb_release -a

>cat /etc/redhat-release

>rpm -q redhat-release
