set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'aceofall/gtags.vim'
Plugin 'Yggdroot/indentLine'

Bundle 'https://github.com/altercation/vim-colors-solarized.git'

call vundle#end()            " required
" 常用命令
" " :PluginList       - 查看已经安装的插件
" " :PluginInstall    - 安装插件
" " :PluginUpdate     - 更新插件
" " :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" " :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可
"
" " h: vundle         - 获取帮助

" Customized configuration start here
colorscheme solarized
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

let g:EclimFileTypeValidate = 0
set encoding=utf-8
set nu! "显示行号
syntax on "代码高亮
set ts=4 "设置tab键为四个空格
set background=dark
set nocompatible              " required
set autoread
set noswapfile
set nowb
set paste
filetype on                  " required
filetype plugin on
filetype plugin indent on
syntax enable
let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0
autocmd VimEnter * NERDTree
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"set tags=~/.tags
nn <silent><F2> :exec("NERDTree ".expand('%:h'))<CR>
set clipboard=unnamed
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'
" 自动缩进
set autoindent
" 使用空格扩展tab
set expandtab
" tab大小为2
set ts=2 sw=2 et
" vim启动时启用vim_indent_guides
let g:indent_guides_enable_on_vim_startup = 1
" 开始画缩进线的缩进等级
let g:indent_guides_start_level = 1
" 缩进线宽度
let g:indent_guides_guide_size = 1
" 配色方案
colorscheme desert
" 设定基数列和偶数列的缩进线颜色
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=white
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=red ctermbg=red
