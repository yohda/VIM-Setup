" 각 언어의 문법에 맞게 키워드에 대한 하이라이트를 해준다.
if has("syntax")
	syntax on
endif

" 라인을 보여줌.
set nu

" 탭 간격을 space 4번과 동일하게 해줌.
set ts=4

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

" Vim session 저장
command! Xs :mks! | :xa "save the session, save modified files, and exit
" VIM의 기본 file explorer인 netrw에 대한 기본 설정
let g:netrw_keepdir = 0 "keeps the directory you accessed previously. 
let g:netrw_banner = 0 "hides the top banner that appears by default.
let g:netrw_liststyle = 0 "change the display of files
"0 shows only one directory at a time.
"1 shows file data.
"2 shows files in columns.
"3 shows as a tree where open directories are expanded.
let g:netrw_browse_split = 4 "changes how files are opened.
"1 opens files in a horizontal split.
"2 opens in a vertical split.
"3 opens in a new tab.
"4 opens in a previous window, avoiding the creation of more divisions.
let g:netrw_altv = 1 "switches the NetRW display to the left.
let g:netrw_winsize = 25 "limits window size to 25% of available screen space.
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


function Yohda()
	
endfunction
