### 1 通过yum将vim升级至vim8
```
	rpm -Uvh http://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el7.noarch.rpm
	rpm --import http://mirror.ghettoforge.org/distributions/gf/RPM-GPG-KEY-gf.el7
	yum -y remove vim-minimal vim-common vim-enhanced sudo
	yum -y --enablerepo=gf-plus install vim-enhanced sudo
```

### 2 Linux + github
```
	yum -y install git 
	git config --global user.name "git的用户名"
	git config --global user.email "git的邮箱"
	ssh-keygen -t rsa -C "git的邮箱"
	cat "你的密钥保存地址，(看终端上面显示)"
	"复制密钥（最后的邮箱 不要复制）"
	"回到浏览器登陆github，---settings--SSH and GPG keys--- 粘贴----New SSH key"
```

### 3 Linux + DB
#### 3-1 MySql
```
  	yum -y install mariadb-server mariadb
  	systemctl start mariadb
  	systemctl status mariadb
  	mysql
```
### 4 Account Management
```
example:
	$grpadd group_name
	$useradd -u -g group_name username
	$mkdir /srv/project
	$chgrp group_name /srv/project
	$chmod .... /srv/project
```
------------------------------------------------------------
```
	$cat /etc/passwd /etc/group /etc/gshadow
1-Check 'mysql' account
	$grep 'mysql' cat /etc/passwd /etc/group /etc/gshadow
2-Check supported groups(first group is effective group)
	$groups
3-Change effective group between supported groups
	$newgrp 'target_group_name'
	$group
	......
	$exit  #exit the env of newgrp
```
-----------------------------------------------------------
```
4-Add/delete account
	$useradd [-u] [-g] username
	$usermod 
	$userdel [-r] username
	-------------------------------------------------------------------
	$passwd / $echo "your_passwd" | passwd --stdin username
	$chage     			   : list all parameters of passwd
	$id / grep uaername /etc/passwd	   : check UID/GID etc..
```
-------------------------------------------------------------
```
5-Add/delete group	
	$groupadd
	$groupmod
	$groupdel
```
-------------------------------------------------------------
```
6-ACL: [Set exclusive permissions for a specific account]
	$getfacl
	$setfacl
	
```
### 5 internet
```
	$ifconfig
	$hostname
	
	$ cd /etc/sysconfig/network-scripts/...
	$ vim /etc/hostname
	$ vim /etc/hosts

```
