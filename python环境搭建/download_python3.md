### 首先是下载python：（2020/06/11）
  参考：https://blog.csdn.net/zhongranxu/article/details/79859234?utm_medium=distribute.pc_relevant.none-task-blog-baidujs-1
  wget + 官网压缩包地址
  tsr -xf python-X.X.X.tgz
  cd python-x.x.x
  mkdir usr/python-x.x.x
  ./configure --prefix=usr/python-x.x.x
  make
  make install
  
  cd /usr/bin
  mv python python.back_up  #给之前的python2备份
  ln -s /usr/pyhton-x.x.x/bin/python3 /usr/bin/pyhton
  
  ===============yum依赖python2的问题
  vim /usr/bin/yum
  把文件头部的#!/usr/bin/python改成#!/usr/bin/python2.7保存退出即可
  
  
  

  
