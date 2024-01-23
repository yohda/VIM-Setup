set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set tags=/home/pi/workspace/pi/tags

" 각 언어의 문법에 맞게 키워드에 대한 하이라이트를 해준다.
if has("syntax")
	syntax on
endif

" 라인을 보여줌.
set nu

" 탭 간격을 space 4번과 동일하게 해줌.
set ts=2

" 대소문자 구분 없이 검색해줌.
set ignorecase

" 현재 커서가 있는 곳에 가로줄로 하이라이트를 해줌. 
set cursorline

" vim에서 검색할 때, 찾는 키워드에 하이라이트를 해줌.
set hlsearch

set laststatus=2 " 상태표시줄을 보여준다. 예를들어, 현재 vim에서 켜고 있는 파일의 경로 및 이름이나 현재 몇 번째줄에 커서가 가 있는지 등등
set statusline+=%F " 파일 전체 풀 패스로 하단에 표시 
set statusline+=%= " 오른쪽으로 이동 
set statusline+=%l " 현재 라인 표시 
set statusline+=/ " 구분자 표시 
set statusline+=%L " 전체 라인 표시

" for mouse wheel scroll
set mouse=a

" set list " tab은 '^I'로 보이게 하고, 개행은 '$'으로, 띄어쓰기 그냥 ' '이다. 나중에 vim으로 파이썬 코드를 수정할 때를 대비해서 아주 중요한 기능일 것으로 보인다.
colorscheme delek

" 저장하고 종료하기를 F12로 맵핑
map <F12> :wq!<CR> 


" 아래의 내용들은 파일들을 닫을 때, 오타 방지를 위해서 키를 맵핑하는 내용이다.
" 실수로 파일을 닫을 때, 'q1', Q!', 'wq1' 등으로 오타를 내는 경우가 많기 때문에 아래와 같이 키를 맵핑하면 흐름이 끊기지 않을 수 있다.
abbr Q q
abbr W w
abbr q1 q!
abbr Q1 q!
abbr Wq wq
abbr WQ wq
abbr wQ wq
abbr wq1 wq!
abbr WQ! wq!
abbr Wq! wq!
abbr wQ! wq!

" NERDTree Config
let g:NERDTreeWinSize = 30
" vim open시, NERDTree 자동 오픈. 
au VimEnter *  NERDTree
nmap <F7> :NERDTreeToggle<CR>

" Tagbar Config
nmap <F8> :TagbarToggle<CR>
" autocmd FileType python,c,cpp TagbarOpen " vim open 시, tagbar도 켜기.
nnoremap <F5> :bp!<CR>   
nnoremap <F6> :bn!<CR>    
let g:airline#extensions#tabline#enabled = 1              " vim-airline 버퍼 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'          " vim-airline 버퍼 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1       " buffer number를 보여준다
let g:airline#extensions#tabline#buffer_nr_format = '%s:' " buffer number format

" deoplete
let g:deoplete#enable_at_startup = 1

" airline-themes
let g:airline_theme='seoul256'

" gruxbox config
set background=dark
colorscheme gruvbox

set clipboard=unnamedplus
