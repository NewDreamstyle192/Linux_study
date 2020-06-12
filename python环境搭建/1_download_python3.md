https://blog.csdn.net/zhongranxu/article/details/79859234?utm_medium=distribute.pc_relevant.none-task-blog-baidujs-1  
  
  ```
  wget + url of python3  
  tsr -xf python-X.X.X.tgz  
  cd python-x.x.x  
  mkdir usr/python-x.x.x  
  ./configure --prefix=usr/python-x.x.x  
  make  
  make install  
  
  cd /usr/bin  
  mv python python.back_up                              #back up previoous python2  
  ln -s /usr/pyhton-x.x.x/bin/python3 /usr/bin/pyhton   #softlink  
  ```
  ===============the relying problem(python2) of yum  
  
 `vim /usr/bin/yum` 
  #!/usr/bin/python     ------->    #!/usr/bin/python2.7  
 
  
------------------------------------------------------but then i found the changing of $PATH/(, such as pip2 still is usr/bin/pip2，instead you know python3/bin/pip,my bin/ didn't even have pip3!!!) made me crazy, so let's  

    rm -f python3  

why???  cause the existence of Anaconda3!!!!!  
```
    cd  
    wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh  
    bash Anaconda3-2020.02-Linux-x86_64.sh  
    source .bashrc  
```
Wow it worked! preety good !(plz copy the latest link of line26 to Anaconda website ：)
  
  

  
