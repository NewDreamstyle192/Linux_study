$ wget https://mirrors.tuna.tsinghua.edu.cn/AdoptOpenJDK/8/jdk/x64/linux/OpenJDK8U-jdk_x64_linux_hotspot_8u262b10.tar.gz
$ tar -zxvf OpenJDK8U-jdk_x64_linux_hotspot_8u262b10.tar.gz -C /usr/local
$ cd /usr/local
$ mv jdk8u262-b10/ jdk
----------------------------------------
vim /etc/profile
```
export JAVA_HOME=/usr/local/jdk
export $PATH=$PATH:$JAVA_HOME/bin:
```
$soure /etc/profile

