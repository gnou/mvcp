"Author: Gnou Cui
"UpdateTime: Aug 13, 2011
"
execute pathogen#infect()

"关闭兼容模式
set nocompatible

"语法高亮
syntax enable
"使用语法高亮配色方案替换默认方案
syntax on
"用于语法高亮的配色方案
colorscheme solarized

if has('gui_running')
	set background=light
else
	set background=dark
endif

"设置字体
set gfn=Monaco:h14

"设置tab键宽度
set tabstop=4
set shiftwidth=4
"以空格代替制表符
set expandtab

set softtabstop=4
set smartindent
"开始新行时使用上一行的缩进方式
set autoindent

"显示行号
set number

"搜索
"搜索忽略大小写
set ignorecase
"高亮显示搜索结果
set hlsearch
"开启实时搜索
set incsearch

"键入)}]时显示({[的位置
set showmatch

"文件类型检测
"打开文件类型检测
filetype on
"根据文件类型加载对应的插件
filetype plugin on
"根据不同的文件类型采取不同的缩进
filetype indent on

"状态栏
set statusline=\ [File]\ %F\ %r\ %=Line\:\%l,Column\:%c\ %P
"状态栏总是存在
set laststatus=2

"关闭备份
set nobackup

"设置历史记录条数
set history=100

"关闭出错时的警报声
set noerrorbells

"配置多语言环境
if has("multi_byte")
	set encoding=utf-8
	set termencoding=utf-8
	set formatoptions+=mM
	set fencs=utf-8,gbk
	if v:lang=~?'^\(zh\)\|\(ja\)\|\(ko\)'
		set ambiwidth=double
	endif
endif

"专用于Gvim的部分
if has('gui_running')
	"设置字体
	"set guifont=
endif

"自定义快捷键
nmap vs :vsplit

"插件相关配置
"MiniBufExplorer
"Ctrl+L=next buf  &&  Ctrl+H=last buf
let g:miniBufExplMapCTabSwitchBufs = 1
