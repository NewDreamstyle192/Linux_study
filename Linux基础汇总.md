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

### 4 Vim -- [C/C++, python] -- IDE
#### 4-1 vimrc
```
$ mkdir -p ~/.vim/bundle ~/.vim/autoload
$ vim ~/.vimrc
```
```
"====================
"basic setting
"===================
set nu
set ruler
set mouse=a
set history=1000
set nocompatible
set tabstop=4
set shiftwidth=4
set bg=dark
syntax enable
syntax on
set backspace=2
set cindent
set autoindent
set t_Co=256

set smarttab
set showcmd

"set color
set guifont=Courier\ New:h12
set t_Co=256
set laststatus=2
"colorscheme desert

"set fold
set foldcolumn=4
"set foldopen=all
"set foldclose=all
set foldmethod=syntax
set foldlevel=100
set foldmethod=marker

"ignore A/a
set ignorecase
set incsearch
set hlsearch

"show matching brackets
set showmatch

"=================
"plugin manager---------Vundle
"=================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

Plugin 'The-NERD-tree'
map <F2> iNERDTreeToggle<CR>
let NERDTreeWinSize=25 

call vundle#end()
filetype plugin indent on 
```

#### 4-2 syntax and highlight
```
:help usr_44.txt   //you can see help txt to customize syntax&highlight_style
$ vim ~/.vim/syntax/c.vim
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunctions gui=None cterm=bold certmfg=195
```

  
